version 1.0

task MindTheGapFind {
  input {
    Boolean inIn
    Boolean graphGraph
    Boolean refRef
    Boolean bedBed
    Boolean outOutTmp
    Boolean outOut
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean homoHomoOnly
    Boolean maxMaxRep
    Boolean hetHetMaxOcc
    Boolean insertInsertOnly
    Boolean nbNbCores
    Boolean maxMaxDisk
    Boolean maxMaxMemory
    Boolean verboseVerbose
  }
  command <<<
    MindTheGap find \
      ~{true="-in" false="" inIn} \
      ~{true="-graph" false="" graphGraph} \
      ~{true="-ref" false="" refRef} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-out-tmp" false="" outOutTmp} \
      ~{true="-out" false="" outOut} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-homo-only" false="" homoHomoOnly} \
      ~{true="-max-rep" false="" maxMaxRep} \
      ~{true="-het-max-occ" false="" hetHetMaxOcc} \
      ~{true="-insert-only" false="" insertInsertOnly} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-disk" false="" maxMaxDisk} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}