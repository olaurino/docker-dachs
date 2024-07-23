import os
from astropy.io.votable import parse
import yaml
import numpy as np
from xml.etree.ElementTree import Element, SubElement, tostring, ElementTree


def convert_value(value):
    if isinstance(value, np.generic):
        return value.item()
    return value


def generate_xml_snippet(table):
    root = Element("columns")
    for col in table.fields:
        column = SubElement(root, "column")
        column.set("name", col.name)
        column.set("ucd", col.ucd or '')
        column.set("unit", col.unit.to_string() if col.unit else '')
        column.set("description", col.description or '')
        column.set("type", col.datatype or 'text')
        column.set("verbLevel", "18")
    return root


# Read the VOTable
votable_file = "data/table_csc21.master_source-sdss-bootes-cda.cfa.harvard.edu.vot"
votable = parse(votable_file)
table = votable.get_first_table()
col_names = [f.name for f in table.fields]

# Generate a YAML file for each row
for row in table.array:
    # Extract the name for the file
    name = row['name']

    # Create the content for the YAML file, converting numpy values to native types
    content = {key: convert_value(row[key]) for key in col_names if row[key]}

    # Define the file name
    file_name = f"data/{name.replace(' ', '_')}.yaml"

    # Write the content to the YAML file
    with open(file_name, 'w') as yaml_file:
        yaml.dump(content, yaml_file, default_flow_style=False, default_style=None)

    print(f"Generated file: {file_name}")

# Generate XML snippet for columns
# xml_root = generate_xml_snippet(table)
# xml_string = tostring(xml_root, encoding='unicode', method='xml')
# print(xml_string)
