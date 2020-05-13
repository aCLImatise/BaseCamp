version 1.0

task Leon {
  input {
    Boolean fileFile
    Boolean cC
    Boolean dD
    Boolean nbNbCores
    Boolean losslessLossless
    Boolean kmKmErSize
    Boolean abundanceAbundance
    Boolean inInItIterator
    Boolean seqSeqOnly
    Boolean noheaderNoheader
    Boolean noNoQual
  }
  command <<<
    leon \
      ~{true="-file" false="" fileFile} \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-lossless" false="" losslessLossless} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance" false="" abundanceAbundance} \
      ~{true="-init-iterator" false="" inInItIterator} \
      ~{true="-seq-only" false="" seqSeqOnly} \
      ~{true="-noheader" false="" noheaderNoheader} \
      ~{true="-noqual" false="" noNoQual}
  >>>
}