version 1.0

task MindTheGapFill {
  input {
    Boolean inIn
    Boolean graphGraph
    Boolean contigContig
    Boolean bkBkPt
    Boolean outOut
    Boolean overlapOverlap
    Boolean filterFilter
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean maxMaxNodes
    Boolean maxMaxLength
    Boolean nbNbCores
    Boolean maxMaxDisk
    Boolean maxMaxMemory
    Boolean verboseVerbose
  }
  command <<<
    MindTheGap fill \
      ~{true="-in" false="" inIn} \
      ~{true="-graph" false="" graphGraph} \
      ~{true="-contig" false="" contigContig} \
      ~{true="-bkpt" false="" bkBkPt} \
      ~{true="-out" false="" outOut} \
      ~{true="-overlap" false="" overlapOverlap} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-max-nodes" false="" maxMaxNodes} \
      ~{true="-max-length" false="" maxMaxLength} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-disk" false="" maxMaxDisk} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}