version 1.0

task KmerInShort {
  input {
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean fileFile
    Boolean kmKmErSize
    Boolean outOut
    Boolean offsetOffset
    Boolean stepStep
    Boolean kvalKval
    Boolean dontDontReverse
    Boolean freqFreq
    Boolean perPerSeq
  }
  command <<<
    KmerInShort \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-file" false="" fileFile} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-out" false="" outOut} \
      ~{true="-offset" false="" offsetOffset} \
      ~{true="-step" false="" stepStep} \
      ~{true="-kval" false="" kvalKval} \
      ~{true="-dont-reverse" false="" dontDontReverse} \
      ~{true="-freq" false="" freqFreq} \
      ~{true="-perSeq" false="" perPerSeq}
  >>>
}