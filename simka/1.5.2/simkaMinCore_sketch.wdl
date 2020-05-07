version 1.0

task SimkaMinCoreSketch {
  input {
    Boolean inIn
    Boolean outOut
    Boolean seedSeed
    Boolean verboseVerbose
    Boolean kmKmErSize
    Boolean nbNbKmErs
    Boolean filterFilter
    Boolean maxMaxReads
    Boolean minMinReadSize
    Boolean minMinShannonIndex
    Boolean nbNbCores
    Boolean maxMaxMemory
  }
  command <<<
    simkaMinCore sketch \
      ~{true="-in" false="" inIn} \
      ~{true="-out" false="" outOut} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-nb-kmers" false="" nbNbKmErs} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-max-reads" false="" maxMaxReads} \
      ~{true="-min-read-size" false="" minMinReadSize} \
      ~{true="-min-shannon-index" false="" minMinShannonIndex} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-memory" false="" maxMaxMemory}
  >>>
}