<resource resdir="data/chandra" schema="chandra">
    <meta name="title">Prototype Chandra Service</meta>
    <meta name="description" format="plain">
        This will contain a description
    </meta>

    <meta name="creator">
        <meta name="name">Laurino, O.</meta>
    </meta>

    <meta name="creationDate">2013-04-09T12:57:26Z</meta>
    <meta name="schema-rank">1</meta>

    <meta name="facility">Chandra X-Ray Observatory</meta>

    <meta name="subject">Survey</meta>

    <table id="detection" onDisk="True">
        <meta name="title">Detection</meta>
        <meta name="table-rank">100</meta>
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
        <meta name="table-rank">50</meta>
        <meta name="_associatedDatalinkService">
            <meta name="serviceId">dl</meta>
            <meta name="idColumn">pub_did</meta>
        </meta>
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

    <table id="master_source" onDisk="True" adql="True">
        <meta name="title">Master Source</meta>
        <meta name="description">Prototype Chandra Master Source</meta>
        <meta name="table-rank">1</meta>
        <mixin>//scs#pgs-pos-index</mixin>

        <column name="name" ucd="meta.main;meta.id" unit=""
                description="Source name in the format '2CXO Jhhmmss.s{+|-}ddmmss[X]'"
                type="text" verbLevel="18" required="True"/>
        <column name="ra" ucd="pos.eq.ra;meta.main" unit="deg" description="Source position, ICRS right ascension"
                verbLevel="18"/>
        <column name="dec" ucd="pos.eq.dec;meta.main" unit="deg" description="Source position, ICRS declination"
                verbLevel="18"/>
        <column name="err_ellipse_r0" ucd="" unit="arcsec"
                description="Major radius of the 95% confidence level position error ellipse" type="double precision"
                verbLevel="18"/>
        <column name="err_ellipse_r1" ucd="" unit="arcsec"
                description="Minor radius of the 95% confidence level position error ellipse" type="double precision"
                verbLevel="18"/>
        <column name="err_ellipse_ang" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the 95% confidence level error ellipse"
                type="double precision" verbLevel="18"/>
        <column name="gal_b" ucd="pos.galactic.lat" unit="deg"
                description="Source position, Galactic latitude (equinox J2000.0, epoch J2000.0)"
                type="double precision"
                verbLevel="18"/>
        <column name="gal_l" ucd="pos.galactic.lon" unit="deg"
                description="Source position, Galactic longitude (equinox J2000.0, epoch J2000.0)"
                type="double precision"
                verbLevel="18"/>
        <column name="extent_flag" ucd="" unit="" required="False"
                description="Source is extended, or deconvolved source extent is inconsistent with a point source at the 90% confidence level in one or more observations and energy bands"
                type="boolean" verbLevel="18"/>
        <column name="conf_flag" ucd="" unit=""
                description="Source may be confused (source and/or background regions overlap in one or more contributing stacked observations)"
                type="boolean" verbLevel="18"/>
        <column name="pileup_flag" ucd="" unit=""
                description="ACIS pile-up fraction exceeds ~ 10% in all observations; source properties may be affected"
                type="boolean" verbLevel="18"/>
        <column name="var_flag" ucd="" unit=""
                description="Source displays flux variability within one or more observations, or between observations, in one or more energy bands"
                type="boolean" verbLevel="18"/>
        <column name="streak_src_flag" ucd="" unit=""
                description="Source is located on an ACIS readout streak in all observations; source properties may be affected"
                type="boolean" verbLevel="18"/>
        <column name="sat_src_flag" ucd="" unit=""
                description="Source is saturated in all observations; source properties are unreliable" type="boolean"
                verbLevel="18"/>
        <column name="man_add_flag" ucd="" unit=""
                description="Source was manually added in the catalog via human review" type="boolean" verbLevel="18"/>
        <column name="man_inc_flag" ucd="" unit=""
                description="Source was manually included in the catalog via human review (detection was rejected by automated criteria)"
                type="boolean" verbLevel="18"/>
        <column name="man_reg_flag" ucd="" unit=""
                description="Source region parameters (dimensions, initial guess position input to the Maximum Likelihood Estimator fit) were manually modified via human review"
                type="boolean" verbLevel="18"/>
        <column name="man_match_flag" ucd="" unit=""
                description="Source detections were manually matched between overlapping stacked observations via human review"
                type="boolean" verbLevel="18"/>
        <column name="man_pos_flag" ucd="" unit=""
                description="Best fit source position was manually modified via human review" type="boolean"
                verbLevel="18"/>
        <column name="var_inter_hard_flag" ucd="" unit=""
                description="Source hardness ratios are statistically inconsistent between two or more observations"
                type="boolean" verbLevel="18"/>
        <column name="major_axis_b" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_h" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_m" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_s" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_u" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_w" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_lolim_b" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_lolim_h" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_lolim_m" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_lolim_s" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_lolim_u" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_lolim_w" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_hilim_b" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_hilim_h" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_hilim_m" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_hilim_s" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_hilim_u" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="major_axis_hilim_w" ucd="" unit="arcsec"
                description="1 sigma radius along the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_b" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_h" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_m" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_s" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_u" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_w" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_lolim_b" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_lolim_h" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_lolim_m" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_lolim_s" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_lolim_u" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_lolim_w" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_hilim_b" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_hilim_h" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_hilim_m" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_hilim_s" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_hilim_u" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="minor_axis_hilim_w" ucd="" unit="arcsec"
                description="1 sigma radius along the minor axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_b" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_h" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_m" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_s" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_u" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_w" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_lolim_b" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_lolim_h" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_lolim_m" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_lolim_s" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_lolim_u" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_lolim_w" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_hilim_b" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_hilim_h" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_hilim_m" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_hilim_s" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_hilim_u" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="pos_angle_hilim_w" ucd="" unit="deg"
                description="Position angle (ref. local true north) of the major axis of the ellipse defining the deconvolved source extent (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="src_area_b" ucd="" unit="arcsec**2"
                description="Area of the deconvolved source extent ellipse, or area of the source polygon for extended sources; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="src_area_h" ucd="" unit="arcsec**2"
                description="Area of the deconvolved source extent ellipse, or area of the source polygon for extended sources; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="src_area_m" ucd="" unit="arcsec**2"
                description="Area of the deconvolved source extent ellipse, or area of the source polygon for extended sources; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="src_area_s" ucd="" unit="arcsec**2"
                description="Area of the deconvolved source extent ellipse, or area of the source polygon for extended sources; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="src_area_u" ucd="" unit="arcsec**2"
                description="Area of the deconvolved source extent ellipse, or area of the source polygon for extended sources; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="src_area_w" ucd="" unit="arcsec**2"
                description="Area of the deconvolved source extent ellipse, or area of the source polygon for extended sources; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="phot_nsrcs" ucd="" unit=""
                description="Number of sources fit simultaneously to compute aperture photometry quantities"
                type="integer"
                verbLevel="18"/>
        <column name="photflux_aper_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; HRC w"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_lolim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_lolim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_lolim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_lolim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_lolim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_lolim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_hilim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_hilim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_hilim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_hilim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_hilim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_hilim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS br"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS ha"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS me"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS so"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS ul"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; HRC wid"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_lolim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_lolim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_lolim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_lolim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_lolim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_lolim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_hilim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_hilim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_hilim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_hilim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_hilim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_hilim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; HRC w"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% l"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% u"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS br"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS ha"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS me"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS so"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; ACIS ul"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events; HRC wid"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% low"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, best estimate derived from the longest block of a multi-band, flux-ordered Bayesian Block analysis of the contributing observations, and calculated by counting X-ray events (68% upp"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_lolim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_lolim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_lolim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_lolim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_lolim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_lolim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_hilim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_hilim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_hilim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_hilim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_hilim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper_avg_hilim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_lolim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_lolim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_lolim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_lolim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_lolim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_lolim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_hilim_b" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_hilim_h" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_hilim_m" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_hilim_s" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_hilim_u" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="photflux_aper90_avg_hilim_w" ucd="" unit="photon/s/cm**2"
                description="Aperture-corrected net photon flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper_avg_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the source region aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_aper90_avg_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Aperture-corrected net energy flux inferred from the PSF 90% ECF aperture, averaged over all contributing observations, and calculated by counting X-ray events (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_lolim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_lolim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_lolim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_lolim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_lolim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_lolim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_hilim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_hilim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_hilim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_hilim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_hilim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_aper90_hilim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed power law model [N_H = N_H(Gal); Gamma = 2.0] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_lolim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_lolim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_lolim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_lolim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_lolim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_lolim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_hilim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_hilim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_hilim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_hilim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_hilim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_aper90_hilim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed black body model [N_H = N_H(Gal); kT = 0.75 keV] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_lolim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_lolim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_lolim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_lolim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_lolim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_lolim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_hilim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_hilim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_hilim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_hilim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_hilim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_aper90_hilim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed bremsstrahlung model [N_H = N_H(Gal); kT = 3.5 keV] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_lolim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_lolim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_lolim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_lolim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_lolim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_lolim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_hilim_b" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_hilim_h" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_hilim_m" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_hilim_s" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_hilim_u" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper_hilim_w" ucd="" unit="erg/s/cm**2"
                description="Source region aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV]; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_lolim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_lolim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_lolim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_lolim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_lolim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_lolim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% lower confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_hilim_b" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_hilim_h" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_hilim_m" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_hilim_s" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_hilim_u" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_aper90_hilim_w" ucd="" unit="erg/s/cm**2"
                description="PSF 90% ECF aperture model energy flux inferred from the canonical absorbed APEC model [N_H = N_H(Gal); kT = 6.5 keV] (68% upper confidence limit); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="likelihood" ucd="" unit=""
                description="Highest detection log likelihood across all stacked observations and energy bands"
                type="double precision" verbLevel="18"/>
        <column name="likelihood_class" ucd="" unit=""
                description="Highest detection likelihood classification across all stacked observations and energy bands"
                type="text" verbLevel="18"/>
        <column name="significance" ucd="" unit=""
                description="Highest flux significance (S/N) across all stacked observations and energy bands"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_lolim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="flux_powlaw_hilim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_gamma" ucd="" unit=""
                description="Photon index, defined as F_E ~ E^(-Gamma), of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_gamma_lolim" ucd="" unit=""
                description="Photon index, defined as F_E ~ E^(-Gamma), of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_gamma_hilim" ucd="" unit=""
                description="Photon index, defined as F_E ~ E^(-Gamma), of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_gamma_rhat" ucd="" unit=""
                description="Photon index convergence criterion of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_nh" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_nh_lolim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_nh_hilim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_nh_rhat" ucd="" unit=""
                description="N_H column density convergence criterion of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_ampl" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_ampl_lolim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_ampl_hilim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum (68% upperer confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_ampl_rhat" ucd="" unit=""
                description="Amplitude convergence criterion of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="powlaw_stat" ucd="" unit=""
                description="chi-square statistic per degree of freedom of the best fitting  absorbed power-law model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_lolim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="flux_bb_hilim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_kt" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="bb_kt_lolim" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_kt_hilim" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_kt_rhat" ucd="" unit=""
                description="Temperature (kT) convergence criterion of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="bb_nh" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="bb_nh_lolim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_nh_hilim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_nh_rhat" ucd="" unit=""
                description="N_H column density convergence criterion of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="bb_ampl" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="bb_ampl_lolim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_ampl_hilim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum (68% upperer confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="bb_ampl_rhat" ucd="" unit=""
                description="Amplitude convergence criterion of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="bb_stat" ucd="" unit=""
                description="chi-square statistic per degree of freedom of the best fitting  absorbed black body model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_lolim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="flux_brems_hilim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_kt" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="brems_kt_lolim" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_kt_hilim" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_kt_rhat" ucd="" unit=""
                description="Temperature (kT) convergence criterion of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="brems_nh" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="brems_nh_lolim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_nh_hilim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_nh_rhat" ucd="" unit=""
                description="N_H column density convergence criterion of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="brems_norm" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="brems_norm_lolim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_norm_hilim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum (68% upperer confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="brems_norm_rhat" ucd="" unit=""
                description="Amplitude convergence criterion of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="brems_stat" ucd="" unit=""
                description="chi-square statistic per degree of freedom of the best fitting  absorbed bremsstrahlung model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_lolim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="flux_apec_hilim" ucd="" unit="erg/s/cm**2"
                description="Net integrated 0.5-7.0 keV energy flux of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_kt" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_kt_lolim" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_kt_hilim" ucd="" unit="keV"
                description="Temperature (kT) of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_kt_rhat" ucd="" unit=""
                description="Temperature (kT) convergence criterion of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_abund" ucd="" unit=""
                description="Abundance of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_abund_lolim" ucd="" unit=""
                description="Abundance of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_abund_hilim" ucd="" unit=""
                description="Abundance of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_abund_rhat" ucd="" unit=""
                description="Abundance convergence criterion of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_z" ucd="" unit=""
                description="Redshift of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_z_lolim" ucd="" unit=""
                description="Redshift of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_z_hilim" ucd="" unit=""
                description="Redshift of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_z_rhat" ucd="" unit=""
                description="Redshift convergence criterion Redshift of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_nh" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_nh_lolim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_nh_hilim" ucd="" unit="10**20/cm**2"
                description="N_H column density of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_nh_rhat" ucd="" unit=""
                description="N_H column density convergence criterion of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_norm" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_norm_lolim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_norm_hilim" ucd="" unit=""
                description="Amplitude of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum (68% upperer confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="apec_norm_rhat" ucd="" unit=""
                description="Amplitude convergence criterion of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="apec_stat" ucd="" unit=""
                description="chi-square statistic per degree of freedom of the best fitting  absorbed APEC model spectrum to the source region aperture PI spectrum"
                type="double precision" verbLevel="18"/>
        <column name="nh_gal" ucd="" unit="10**20/cm**2"
                description="Galactic N_H column density in direction of source" type="double precision"
                verbLevel="18"/>
        <column name="hard_hm" ucd="" unit="" description="ACIS hard - medium (1.2-2.0 keV) energy band hardness ratio"
                type="double precision" verbLevel="18"/>
        <column name="hard_hm_lolim" ucd="" unit=""
                description="ACIS hard - medium (1.2-2.0 keV) energy band hardness ratio (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="hard_hm_hilim" ucd="" unit=""
                description="ACIS hard - medium (1.2-2.0 keV) energy band hardness ratio (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_hard_prob_hm" ucd="" unit=""
                description="Inter-observation ACIS hard - medium (1.2-2.0 keV) energy band hardness ratio variability probability"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_hard_sigma_hm" ucd="" unit=""
                description="Inter-observation ACIS hard - medium (1.2-2.0 keV) energy band hardness ratio variability standard deviation"
                type="double precision" verbLevel="18"/>
        <column name="hard_hs" ucd="" unit="" description="ACIS hard - soft (0.5-1.2 keV) energy band hardness ratio"
                type="double precision" verbLevel="18"/>
        <column name="hard_hs_lolim" ucd="" unit=""
                description="ACIS hard - soft (0.5-1.2 keV) energy band hardness ratio (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="hard_hs_hilim" ucd="" unit=""
                description="ACIS hard - soft (0.5-1.2 keV) energy band hardness ratio (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_hard_prob_hs" ucd="" unit=""
                description="Inter-observation ACIS hard - soft (0.5-1.2 keV) energy band hardness ratio variability probability"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_hard_sigma_hs" ucd="" unit=""
                description="Inter-observation ACIS hard - soft (0.5-1.2 keV) energy band hardness ratio variability standard deviation"
                type="double precision" verbLevel="18"/>
        <column name="hard_ms" ucd="" unit="" description="ACIS medium - soft (0.5-1.2 keV) energy band hardness ratio"
                type="double precision" verbLevel="18"/>
        <column name="hard_ms_lolim" ucd="" unit=""
                description="ACIS medium - soft (0.5-1.2 keV) energy band hardness ratio (68% lower confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="hard_ms_hilim" ucd="" unit=""
                description="ACIS medium - soft (0.5-1.2 keV) energy band hardness ratio (68% upper confidence limit)"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_hard_prob_ms" ucd="" unit=""
                description="Inter-observation ACIS medium - soft (0.5-1.2 keV) energy band hardness ratio variability probability"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_hard_sigma_ms" ucd="" unit=""
                description="Inter-observation ACIS medium - soft (0.5-1.2 keV) energy band hardness ratio variability standard deviation"
                type="double precision" verbLevel="18"/>
        <column name="ks_intra_prob_b" ucd="" unit=""
                description="Intra-observation Kolmogorov-Smirnov test variability probability (highest value across all observations); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="ks_intra_prob_h" ucd="" unit=""
                description="Intra-observation Kolmogorov-Smirnov test variability probability (highest value across all observations); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="ks_intra_prob_m" ucd="" unit=""
                description="Intra-observation Kolmogorov-Smirnov test variability probability (highest value across all observations); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="ks_intra_prob_s" ucd="" unit=""
                description="Intra-observation Kolmogorov-Smirnov test variability probability (highest value across all observations); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="ks_intra_prob_u" ucd="" unit=""
                description="Intra-observation Kolmogorov-Smirnov test variability probability (highest value across all observations); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="ks_intra_prob_w" ucd="" unit=""
                description="Intra-observation Kolmogorov-Smirnov test variability probability (highest value across all observations); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="kp_intra_prob_b" ucd="" unit=""
                description="Intra-observation Kuiper's test variability probability (highest value across all observations); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="kp_intra_prob_h" ucd="" unit=""
                description="Intra-observation Kuiper's test variability probability (highest value across all observations); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="kp_intra_prob_m" ucd="" unit=""
                description="Intra-observation Kuiper's test variability probability (highest value across all observations); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="kp_intra_prob_s" ucd="" unit=""
                description="Intra-observation Kuiper's test variability probability (highest value across all observations); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="kp_intra_prob_u" ucd="" unit=""
                description="Intra-observation Kuiper's test variability probability (highest value across all observations); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="kp_intra_prob_w" ucd="" unit=""
                description="Intra-observation Kuiper's test variability probability (highest value across all observations); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_prob_b" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability probability (highest value across all observations); ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_prob_h" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability probability (highest value across all observations); ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_prob_m" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability probability (highest value across all observations); ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_prob_s" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability probability (highest value across all observations); ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_prob_u" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability probability (highest value across all observations); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_prob_w" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability probability (highest value across all observations); HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_intra_index_b" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability index in the range [0, 10]: indicates whether the source region photon flux is constant within an observation (highest value across all observations); ACIS broad (0.5-7.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_intra_index_h" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability index in the range [0, 10]: indicates whether the source region photon flux is constant within an observation (highest value across all observations); ACIS hard (2.0-7.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_intra_index_m" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability index in the range [0, 10]: indicates whether the source region photon flux is constant within an observation (highest value across all observations); ACIS medium (1.2-2.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_intra_index_s" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability index in the range [0, 10]: indicates whether the source region photon flux is constant within an observation (highest value across all observations); ACIS soft (0.5-1.2 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_intra_index_u" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability index in the range [0, 10]: indicates whether the source region photon flux is constant within an observation (highest value across all observations); ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_intra_index_w" ucd="" unit=""
                description="Intra-observation Gregory-Loredo variability index in the range [0, 10]: indicates whether the source region photon flux is constant within an observation (highest value across all observations); HRC wide (~0.1-10.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_prob_b" ucd="" unit=""
                description="Inter-observation variability probability, calculated from the chi^2 distribution of the photon fluxes of the individual observations; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_prob_h" ucd="" unit=""
                description="Inter-observation variability probability, calculated from the chi^2 distribution of the photon fluxes of the individual observations; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_prob_m" ucd="" unit=""
                description="Inter-observation variability probability, calculated from the chi^2 distribution of the photon fluxes of the individual observations; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_prob_s" ucd="" unit=""
                description="Inter-observation variability probability, calculated from the chi^2 distribution of the photon fluxes of the individual observations; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_prob_u" ucd="" unit=""
                description="Inter-observation variability probability, calculated from the chi^2 distribution of the photon fluxes of the individual observations; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_prob_w" ucd="" unit=""
                description="Inter-observation variability probability, calculated from the chi^2 distribution of the photon fluxes of the individual observations; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_index_b" ucd="" unit=""
                description="Inter-observation variability index in the range [0, 10]: indicates whether the source region photon flux is constant between observations; ACIS broad (0.5-7.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_index_h" ucd="" unit=""
                description="Inter-observation variability index in the range [0, 10]: indicates whether the source region photon flux is constant between observations; ACIS hard (2.0-7.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_index_m" ucd="" unit=""
                description="Inter-observation variability index in the range [0, 10]: indicates whether the source region photon flux is constant between observations; ACIS medium (1.2-2.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_index_s" ucd="" unit=""
                description="Inter-observation variability index in the range [0, 10]: indicates whether the source region photon flux is constant between observations; ACIS soft (0.5-1.2 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_index_u" ucd="" unit=""
                description="Inter-observation variability index in the range [0, 10]: indicates whether the source region photon flux is constant between observations; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_index_w" ucd="" unit=""
                description="Inter-observation variability index in the range [0, 10]: indicates whether the source region photon flux is constant between observations; HRC wide (~0.1-10.0 keV) energy band"
                type="integer" verbLevel="18"/>
        <column name="var_inter_sigma_b" ucd="" unit="photon/s/cm**2"
                description="Inter-observation flux variability standard deviation; the spread of the individual observation photon fluxes about the error weighted mean; ACIS broad (0.5-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_sigma_h" ucd="" unit="photon/s/cm**2"
                description="Inter-observation flux variability standard deviation; the spread of the individual observation photon fluxes about the error weighted mean; ACIS hard (2.0-7.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_sigma_m" ucd="" unit="photon/s/cm**2"
                description="Inter-observation flux variability standard deviation; the spread of the individual observation photon fluxes about the error weighted mean; ACIS medium (1.2-2.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_sigma_s" ucd="" unit="photon/s/cm**2"
                description="Inter-observation flux variability standard deviation; the spread of the individual observation photon fluxes about the error weighted mean; ACIS soft (0.5-1.2 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_sigma_u" ucd="" unit="photon/s/cm**2"
                description="Inter-observation flux variability standard deviation; the spread of the individual observation photon fluxes about the error weighted mean; ACIS ultrasoft (0.2-0.5 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="var_inter_sigma_w" ucd="" unit="photon/s/cm**2"
                description="Inter-observation flux variability standard deviation; the spread of the individual observation photon fluxes about the error weighted mean; HRC wide (~0.1-10.0 keV) energy band"
                type="double precision" verbLevel="18"/>
        <column name="dither_warning_flag" ucd="" unit=""
                description="Highest statistically significant peak in the power spectrum of the source region count rate occurs at the dither frequency or at a beat frequency of the dither frequency in one or more observations"
                type="boolean" verbLevel="18"/>
        <column name="acis_num" ucd="" unit=""
                description="Total number of ACIS imaging observations contributing to the Master Sources Table record of the source"
                type="integer" verbLevel="18"/>
        <column name="acis_hetg_num" ucd="" unit=""
                description="Total number of ACIS/HETG  observations contributing to the Master Sources Table record of the source"
                type="integer" verbLevel="18"/>
        <column name="acis_letg_num" ucd="" unit=""
                description="Total number of ACIS/LETG  observations contributing to the Master Sources Table record of the source"
                type="integer" verbLevel="18"/>
        <column name="acis_time" ucd="" unit="s"
                description="Total exposure time (seconds of good time) for all ACIS imaging observations contributing to the Master Sources Table record of the source"
                type="double precision" verbLevel="18"/>
        <column name="acis_hetg_time" ucd="" unit="s"
                description="Total exposure time (seconds of good time) for all ACIS/HETG  observations contributing to the Master Sources Table record of the source"
                type="double precision" verbLevel="18"/>
        <column name="acis_letg_time" ucd="" unit="s"
                description="Total exposure time (seconds of good time) for all ACIS/LETG  observations contributing to the Master Sources Table record of the source"
                type="double precision" verbLevel="18"/>
        <column name="hrc_num" ucd="" unit=""
                description="Total number of HRC imaging observations contributing to the Master Sources Table record of the source"
                type="integer" verbLevel="18"/>
        <column name="hrc_hetg_num" ucd="" unit=""
                description="Total number of HRC/HETG  observations contributing to the Master Sources Table record of the source"
                type="integer" verbLevel="18"/>
        <column name="hrc_letg_num" ucd="" unit=""
                description="Total number of HRC/LETG  observations contributing to the Master Sources Table record of the source"
                type="integer" verbLevel="18"/>
        <column name="hrc_time" ucd="" unit="s"
                description="Total exposure time (seconds of good time) for all HRC imaging observations contributing to the Master Sources Table record of the source"
                type="double precision" verbLevel="18"/>
        <column name="hrc_hetg_time" ucd="" unit="s"
                description="Total exposure time (seconds of good time) for all HRC/HETG observations contributing to the Master Sources Table record of the source"
                type="double precision" verbLevel="18"/>
        <column name="hrc_letg_time" ucd="" unit="s"
                description="Total exposure time (seconds of good time) for all HRC/LETG  observations contributing to the Master Sources Table record of the source"
                type="double precision" verbLevel="18"/>
    </table>

    <data id="import_master_source">
        <sources recurse="True">
            <pattern>*2CXO*.yaml</pattern>
        </sources>
        <keyValueGrammar>

        </keyValueGrammar>

        <make table="master_source">
            <rowmaker id="gen_rmk_master" idmaps="*">
                <map key="extent_flag">bool(@extent_flag)</map>
                <map key="conf_flag">bool(@conf_flag)</map>
                <map key="pileup_flag">bool(@pileup_flag)</map>
            </rowmaker>
        </make>
    </data>

    <data id="import_detection">
        <sources recurse="True">
            <pattern>*_regimg3.fits*</pattern>
        </sources>
        <fitsProdGrammar qnd="True">
            <maxHeaderBlocks>80</maxHeaderBlocks>
            <mapKeys>
                <map key="obsdec">DEC_PNT</map>
                <map key="obsra">RA_PNT</map>
                <map key="instrument_name">INSTRUME</map>
            </mapKeys>
            <rowfilter procDef="//products#define">
                <bind key="table">"chandra.detection"</bind>
            </rowfilter>
        </fitsProdGrammar>

        <make table="detection">
            <rowmaker id="gen_rmk" idmaps="obsra, obsdec, instrument_name">
                <apply procDef="//siap2#computePGS"/>
                <apply procDef="//siap2#setMeta">
                    <bind name="obs_collection">"CSC 2.1"</bind>
                    <bind name="calib_level">2</bind>
                    <bind name="dataproduct_subtype">"detection cutout"</bind>
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
                <map key="stack_id">STACK_ID</map>
                <map key="revision">REVISION</map>
                <map key="obsdec">DEC_PNT</map>
                <map key="obsra">RA_PNT</map>
                <map key="instrument_name">INSTRUME</map>
            </mapKeys>
            <rowfilter procDef="//products#define">
                <bind key="table">"chandra.stack"</bind>
                <bind key="path">\dlMetaURI{dl}</bind>
                <bind key="mime">'application/x-votable+xml;content=datalink'</bind>
            </rowfilter>
        </fitsProdGrammar>

        <make table="stack">
            <rowmaker id="gen_rmk_stk" idmaps="obsra, obsdec, instrument_name">
                <apply procDef="//siap2#computePGS"/>
                <apply procDef="//siap2#setMeta">
                    <bind name="obs_collection">"CSC 2.1"</bind>
                    <bind name="calib_level">2</bind>
                    <bind name="dataproduct_subtype">"stack image"</bind>
                </apply>
            </rowmaker>
        </make>
    </data>

    <service id="dl" allowed="dlget,dlmeta">
        <meta name="title">Stack Datalink</meta>
        <meta name="description">This service lets you access cutouts
            from Stack Images and retrieve scaled versions.
        </meta>
        <datalinkCore>
            <descriptorGenerator procDef="//soda#fits_genDesc"
                                 name="genFITSDesc">
                <bind key="accrefPrefix">'data/chandra/data'</bind>
                <bind key="descClass">DLFITSProductDescriptor</bind>
            </descriptorGenerator>
            <FEED source="//soda#fits_standardDLFuncs"/>

            <metaMaker semantics="#auxiliary">
                <code>
                    name = descriptor.accref.split('/')[-1].split('_img3')[0]
                    yield descriptor.makeLink(
                    "http://cda.cfa.harvard.edu/csccli/retrieveFile?filetype=stkexpmap&amp;filename="+name+"_exp3.fits&amp;version=rel2.1",
                    contentType="application/fits",
                    description="Stack Exposure Map")
                </code>
            </metaMaker>
            <metaMaker semantics="#auxiliary">
                <code>
                    name = descriptor.accref.split('/')[-1].split('_img3')[0]
                    yield descriptor.makeLink(
                    "http://cda.cfa.harvard.edu/csccli/retrieveFile?filetype=stkbkgimg&amp;filename="+name+"_bkgimg3.fits&amp;version=rel2.1",
                    contentType="image/fits",
                    description="Stack Background Image")
                </code>
            </metaMaker>
        </datalinkCore>
    </service>

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
