<resource schema="threehsp">
  <meta name="title">Third High Synchrotron Peaked Blazars Catalog</meta>
  <meta name="creationDate">2018-02-23T17:05:03</meta>
  <meta name="description">
  The 3HSP catalog.
  </meta>
  <meta name="creator.name">Yu-Ling Chang, Bruno Arsioli, and Paolo Giommi</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">gamma-ray sources</meta>
  <meta name="subject">radio sources</meta>
  <meta name="subject">X-ray sources</meta>
  <meta name="subject">VHE sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Gamma-ray</meta>
    <meta name="waveband">radio</meta>
    <meta name="waveband">X-ray</meta>
   </meta>

   <meta name="source">
    2018.inpress;
   </meta>

   <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="Name">
    <index columns="ra,dec"/>

    <column name="Name" type="text"
      ucd="meta.id;meta.main"
      tablehead="Name" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="ra" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="R.A." verbLevel="1"
      description="Right Ascension"
      required="True"/>

    <column name="dec" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec." verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="sflag" type="integer"
      ucd="meta.code.error"
      tablehead="source_flag" verbLevel="1"
      description="Source Flag"
      required="True"/>

    <column name="BZCat" type="text"
      ucd="meta.id.assoc"
      tablehead="5BZCat_counterpart" verbLevel="1"
      description="Counterpart in 5BZCat"
      required="True"/>

    <column name="nu" type="real"
      unit="Hz" ucd="em.freq"
      tablehead="Log nu_peak" verbLevel="1"
      description="Synchrotron Peak Frequency"
      required="True"/>

    <column name="nufnu" type="real"
      unit="erg cm-2 s-1" ucd="phot.flux.density"
      tablehead="Log Flux_peak" verbLevel="1"
      description="Synchrotron Peak Flux"
      required="True"/>

    <column name="nuflag" type="integer"
      ucd="meta.code.error"
      tablehead="nupeak_flag" verbLevel="1"
      description="Synchrotron Peak flag"
      required="True"/>

    <column name="z" type="text"
      ucd="src.redshift"
      tablehead="z" verbLevel="1"
      description="Redshfit"
      required="True"/>

   <column name="zflag" type="text"
     ucd="meta.code.error"
     tablehead="z_flag" verbLevel="1"
     description="Redshift Flag"
     required="True"/>

   <column name="Gamma" type="text"
     ucd="meta.id.assoc"
     tablehead="Gamma_counterpart" verbLevel="1"
     description="Counterpart in Gamma-ray"
     required="True"/>

   <column name="FOM" type="real"
     ucd="obs.param"
     tablehead="FOM" verbLevel="1"
     description="Figure of Merit"
     required="True"/>

   <column name="WHSP" type="text"
    ucd="meta.id.assoc"
    tablehead="2WHSP_name" verbLevel="1"
    description="2WHSP Name"
    required="True"/>

  </table>

  <data id="import">
    <sources>3HSP.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">3HSP catalog</meta>
    <meta name="shortName">3HSP cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <!--publish render="scs.xml" sets="local"/-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
