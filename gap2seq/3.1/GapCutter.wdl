version 1.0

task GapCutter {
  input {
    Boolean noNoSplit
    Boolean maskMask
    Boolean kK
    Boolean fuzFuz
    Boolean bedBed
    Boolean gapsGaps
    Boolean contigsContigs
    Boolean scaffoldsScaffolds
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    GapCutter \
      ~{true="-no-split" false="" noNoSplit} \
      ~{true="-mask" false="" maskMask} \
      ~{true="-k" false="" kK} \
      ~{true="-fuz" false="" fuzFuz} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-gaps" false="" gapsGaps} \
      ~{true="-contigs" false="" contigsContigs} \
      ~{true="-scaffolds" false="" scaffoldsScaffolds} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}