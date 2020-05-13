version 1.0

task InfluxS {
  input {
    Boolean noNoOpt
    Boolean noNoScale
    String methMeth
    Boolean fullFullSys
    Boolean emuEmu
    Boolean irIrAnd
    String sensSens
    String cupCupX
    String cupCupN
    String cuppCupp
    String clownClownR
    String cinCinOut
    String clowClowP
    String npNp
    Boolean lnLn
    Boolean slnSln
    Boolean tikTikHReg
    Boolean limLim
    String zcZc
    Boolean ffFfGuess
    String fFSeries
    String iseriesIseries
    String seedSeed
    Boolean exclExclOutliers
    Boolean noNoCalc
    Boolean addAddNoise
    Boolean copyCopyDoc
    Boolean copyCopyTest
    Boolean installInstallRDep
    Boolean timeTimeIt
    Boolean profProf
    String tbTbLimit
  }
  command <<<
    influx_s \
      ~{true="--noopt" false="" noNoOpt} \
      ~{true="--noscale" false="" noNoScale} \
      ~{if defined(methMeth) then ("--meth " +  '"' + methMeth + '"') else ""} \
      ~{true="--fullsys" false="" fullFullSys} \
      ~{true="--emu" false="" emuEmu} \
      ~{true="--irand" false="" irIrAnd} \
      ~{if defined(sensSens) then ("--sens " +  '"' + sensSens + '"') else ""} \
      ~{if defined(cupCupX) then ("--cupx " +  '"' + cupCupX + '"') else ""} \
      ~{if defined(cupCupN) then ("--cupn " +  '"' + cupCupN + '"') else ""} \
      ~{if defined(cuppCupp) then ("--cupp " +  '"' + cuppCupp + '"') else ""} \
      ~{if defined(clownClownR) then ("--clownr " +  '"' + clownClownR + '"') else ""} \
      ~{if defined(cinCinOut) then ("--cinout " +  '"' + cinCinOut + '"') else ""} \
      ~{if defined(clowClowP) then ("--clowp " +  '"' + clowClowP + '"') else ""} \
      ~{if defined(npNp) then ("--np " +  '"' + npNp + '"') else ""} \
      ~{true="--ln" false="" lnLn} \
      ~{true="--sln" false="" slnSln} \
      ~{true="--tikhreg" false="" tikTikHReg} \
      ~{true="--lim" false="" limLim} \
      ~{if defined(zcZc) then ("--zc " +  '"' + zcZc + '"') else ""} \
      ~{true="--ffguess" false="" ffFfGuess} \
      ~{if defined(fFSeries) then ("--fseries " +  '"' + fFSeries + '"') else ""} \
      ~{if defined(iseriesIseries) then ("--iseries " +  '"' + iseriesIseries + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--excl_outliers" false="" exclExclOutliers} \
      ~{true="--nocalc" false="" noNoCalc} \
      ~{true="--addnoise" false="" addAddNoise} \
      ~{true="--copy_doc" false="" copyCopyDoc} \
      ~{true="--copy_test" false="" copyCopyTest} \
      ~{true="--install_rdep" false="" installInstallRDep} \
      ~{true="--TIMEIT" false="" timeTimeIt} \
      ~{true="--prof" false="" profProf} \
      ~{if defined(tbTbLimit) then ("--tblimit " +  '"' + tbTbLimit + '"') else ""}
  >>>
}