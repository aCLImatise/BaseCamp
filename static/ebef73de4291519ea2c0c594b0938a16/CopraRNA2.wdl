version 1.0

task CopraRNA2.pl {
  input {
    Boolean srnaSrnaSeq
    Boolean regionRegion
    Boolean ntNtUp
    Boolean ntNtDown
    Boolean coresCores
    Boolean rcRcSize
    Boolean winsizeWinsize
    Boolean maxMaxBpDist
    Boolean cop1Cop1
    Boolean consCons
    Boolean verboseVerbose
    Boolean webWebSrv
    Boolean noNoClean
    Boolean enrichEnrich
    Boolean noNoOi
    Boolean ooiOoiFilt
    Boolean rootRoot
    Boolean topTopCount
  }
  command <<<
    CopraRNA2.pl \
      ~{true="--srnaseq" false="" srnaSrnaSeq} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--ntup" false="" ntNtUp} \
      ~{true="--ntdown" false="" ntNtDown} \
      ~{true="--cores" false="" coresCores} \
      ~{true="--rcsize" false="" rcRcSize} \
      ~{true="--winsize" false="" winsizeWinsize} \
      ~{true="--maxbpdist" false="" maxMaxBpDist} \
      ~{true="--cop1" false="" cop1Cop1} \
      ~{true="--cons" false="" consCons} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--websrv" false="" webWebSrv} \
      ~{true="--noclean" false="" noNoClean} \
      ~{true="--enrich" false="" enrichEnrich} \
      ~{true="--nooi" false="" noNoOi} \
      ~{true="--ooifilt" false="" ooiOoiFilt} \
      ~{true="--root" false="" rootRoot} \
      ~{true="--topcount" false="" topTopCount}
  >>>
}