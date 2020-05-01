version 1.0

task SimkaMerge {
  input {
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean nbNbCores
    Boolean kmKmErSize
    Boolean inIn
    Boolean outOutTmpSimKa
    Boolean partitionPartitionId
    Boolean nbNbCores
    Boolean maxMaxMemory
    Boolean kmKmErShannonIndex
    Boolean simpleSimpleDist
    Boolean complexComplexDist
  }
  command <<<
    simkaMerge \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-in" false="" inIn} \
      ~{true="-out-tmp-simka" false="" outOutTmpSimKa} \
      ~{true="-partition-id" false="" partitionPartitionId} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-kmer-shannon-index" false="" kmKmErShannonIndex} \
      ~{true="-simple-dist" false="" simpleSimpleDist} \
      ~{true="-complex-dist" false="" complexComplexDist}
  >>>
}