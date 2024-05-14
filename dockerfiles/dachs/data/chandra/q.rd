<resource resdir="data/chandra" schema="chandra">
    <meta name="title">Prototype Chandra Service</meta>
    <meta name="description" format="plain">
        This will contain a description
    </meta>

    <meta name="creator">
        <meta name="name">Laurino, O.</meta>
    </meta>

    <meta name="creationDate">2013-04-09T12:57:26Z</meta>
    <meta name="schema-rank">100</meta>

    <meta name="facility">Chandra X-Ray Observatory</meta>

    <table id="detection" onDisk="True">
        <meta name="description">Prototype Chandra Service</meta>
        <mixin>//siap2#pgs</mixin>
        <mixin preview="NULL">//obscore#publishObscoreLike</mixin>

        <column name="obsra"
                ucd="pos.eq.ra" unit="deg"
                description="Instrument pointing, RA"
                verbLevel="18"/>
        <column name="obsdec"
                ucd="pos.eq.dec" unit="deg"
                description="Instrument pointing, Dec"
                verbLevel="18"/>
    </table>

    <table id="stack" onDisk="True">
        <meta name="description">Prototype Chandra Service</meta>
        <mixin>//siap2#pgs</mixin>
        <mixin preview="NULL">//obscore#publishObscoreLike</mixin>

        <column name="obsra"
                ucd="pos.eq.ra" unit="deg"
                description="Instrument pointing, RA"
                verbLevel="18"/>
        <column name="obsdec"
                ucd="pos.eq.dec" unit="deg"
                description="Instrument pointing, Dec"
                verbLevel="18"/>
    </table>

    <data id="import_detection">
        <sources recurse="True">
            <pattern>*_regimg3.fits*</pattern>
        </sources>
        <fitsProdGrammar qnd="True">
            <maxHeaderBlocks>80</maxHeaderBlocks>
            <mapKeys>
                <map key="obsdec">DEC_PNT</map>
                <map key="obsra">RA_PNT</map>
                <map key="instrument">INSTRUME</map>
            </mapKeys>
            <rowfilter procDef="__system__/products#define">
                <bind key="table">"chandra.detection"</bind>
            </rowfilter>
        </fitsProdGrammar>

        <make table="detection">
            <rowmaker id="gen_rmk" idmaps="obsra, obsdec">
                <apply procDef="//siap2#computePGS"/>
                <apply procDef="//siap2#setMeta">
                    <bind name="obs_collection">@instrument</bind>
                    <bind name="calib_level">3</bind>
                </apply>
            </rowmaker>
        </make>
    </data>

    <data id="import_stk">
        <sources recurse="True">
            <pattern>*fJ*_img3.fits*</pattern>
        </sources>
        <fitsProdGrammar qnd="True">
            <maxHeaderBlocks>80</maxHeaderBlocks>
            <mapKeys>
                <map key="obsdec">DEC_PNT</map>
                <map key="obsra">RA_PNT</map>
                <map key="instrument">INSTRUME</map>
            </mapKeys>
            <rowfilter procDef="__system__/products#define">
                <bind key="table">"chandra.stack"</bind>
            </rowfilter>
        </fitsProdGrammar>

        <make table="stack">
            <rowmaker id="gen_rmk_stk" idmaps="obsra, obsdec">
                <apply procDef="//siap2#computePGS"/>
                <apply procDef="//siap2#setMeta">
                    <bind name="obs_collection">@instrument</bind>
                    <bind name="calib_level">2</bind>
                </apply>
            </rowmaker>
        </make>
    </data>

    <service id="s" allowed="form,siap2.xml">
        <meta name="shortName">Chandra Nexus Proto</meta>
        <meta name="sia.type">Pointed</meta>
        <meta name="testQuery.pos.ra">201.365</meta>
        <meta name="testQuery.pos.dec">-43.0192</meta>
        <meta name="testQuery.size.ra">0.1</meta>
        <meta name="testQuery.size.dec">0.1</meta>

        <publish render="siap2.xml" sets="ivo_managed"/>

        <dbCore queriedTable="detection">
            <FEED source="//siap2#parameters"/>
        </dbCore>
        <dbCore queriedTable="stack">
            <FEED source="//siap2#parameters"/>
        </dbCore>
    </service>


</resource>
