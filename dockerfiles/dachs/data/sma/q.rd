<resource resdir="data/sma" schema="sma">
    <meta name="title">Prototype SMA Service</meta>
    <meta name="description" format="plain">
        This will contain a description
    </meta>

    <meta name="creator">
        <meta name="name">Laurino, O.</meta>
    </meta>

    <meta name="creationDate">2013-04-09T12:57:26Z</meta>
    <meta name="schema-rank">100</meta>

    <meta name="facility">SMA</meta>

    <table id="main" onDisk="True">
        <meta name="description">Prototype SMA Service</meta>
        <mixin>//siap2#pgs</mixin>
        <mixin preview="NULL">//obscore#publishObscoreLike</mixin>
        <mixin
                s_resolution_min="s_resolution_min"
                s_resolution_max="s_resolution_max"
        >//obs-radio#publish
        </mixin>

        <column name="obsra"
                ucd="pos.eq.ra" unit="deg"
                description="Antenna pointing, RA"
                verbLevel="18"/>
        <column name="obsdec"
                ucd="pos.eq.dec" unit="deg"
                description="Antenna pointing, Dec"
                verbLevel="18"/>
        <column original="//obs-radio#obs_radio.s_resolution_min"/>
        <column original="//obs-radio#obs_radio.s_resolution_max"/>
    </table>

    <data id="import_main">
        <sources recurse="True">
            <pattern>*.fits</pattern>
        </sources>
        <fitsProdGrammar qnd="True">
            <maxHeaderBlocks>80</maxHeaderBlocks>
            <mapKeys>
                <map key="object">OBJECT</map>
                <map key="em_min">EM_MIN</map>
                <map key="em_max">EM_MAX</map>
                <map key="t_min">T_MIN</map>
                <map key="t_max">T_MAX</map>
                <map key="s_resolution_min">BMIN</map>
                <map key="s_resolution_max">BMAJ</map>
                <map key="obsdec">OBSDEC</map>
                <map key="obsra">OBSRA</map>
            </mapKeys>
            <rowfilter procDef="__system__/products#define">
                <bind key="table">"sma.main"</bind>
            </rowfilter>
        </fitsProdGrammar>

        <make table="main">
            <rowmaker id="gen_rmk" idmaps="obsra, obsdec, s_resolution*">
                <apply procDef="//siap2#computePGS"/>
                <apply procDef="//siap2#setMeta">
                    <bind name="obs_collection">@obs_collection</bind>
                    <bind name="o_ucd">"phot.flux.density"</bind>
                    <bind name="target_name">@target_name</bind>
                    <bind name="pol_states">@pol_states</bind>
                    <bind name="pol_xel">@pol_xel</bind>
                    <bind name="instrument_name">@instrument_name</bind>
                    <bind name="t_min">@t_min</bind>
                    <bind name="t_max">@t_max</bind>
                    <bind name="t_exptime">@t_exptime</bind>
                    <bind name="t_resolution">@t_resolution</bind>
                    <bind name="em_min">@em_min</bind>
                    <bind name="em_max">@em_max</bind>
                </apply>
            </rowmaker>
        </make>
    </data>

    <service id="s" allowed="form,siap2.xml">
        <meta name="shortName">SMA Nexus Proto</meta>
        <meta name="sia.type">Pointed</meta>
        <meta name="testQuery.pos.ra">201.365</meta>
        <meta name="testQuery.pos.dec">-43.0192</meta>
        <meta name="testQuery.size.ra">0.1</meta>
        <meta name="testQuery.size.dec">0.1</meta>

        <publish render="siap2.xml" sets="ivo_managed"/>

        <dbCore queriedTable="main">
            <FEED source="//siap2#parameters"/>
        </dbCore>
    </service>

</resource>
