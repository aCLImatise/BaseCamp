version 1.0

task GapMerger {
  input {
    Boolean gapsGaps
    Boolean contigsContigs
    Boolean scaffoldsScaffolds
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    GapMerger \
      ~{true="-gaps" false="" gapsGaps} \
      ~{true="-contigs" false="" contigsContigs} \
      ~{true="-scaffolds" false="" scaffoldsScaffolds} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}