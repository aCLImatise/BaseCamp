version 1.0

task SimkaMin.py {
  input {
    Boolean inIn
    Boolean outOut
    Boolean seedSeed
    Boolean binBin
    Boolean nbNbCores
    Boolean maxMaxMemory
    Boolean kmKmErSize
    Boolean nbNbKmErs
    Boolean filterFilter
    Boolean maxMaxReads
    Boolean minMinReadSize
    Boolean minMinShannonIndex
  }
  command <<<
    simkaMin.py \
      ~{true="-in" false="" inIn} \
      ~{true="-out" false="" outOut} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-bin" false="" binBin} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-nb-kmers" false="" nbNbKmErs} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-max-reads" false="" maxMaxReads} \
      ~{true="-min-read-size" false="" minMinReadSize} \
      ~{true="-min-shannon-index" false="" minMinShannonIndex}
  >>>
}