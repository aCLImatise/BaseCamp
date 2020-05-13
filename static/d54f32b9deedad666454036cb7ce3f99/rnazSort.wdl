version 1.0

task RnazSort.pl {
  input {
    Boolean reverseReverse
    Boolean noNoLoci
    Boolean manMan
    String? keyKey
    File? fileFile
  }
  command <<<
    rnazSort.pl \
      ~{keyKey} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--no-loci" false="" noNoLoci} \
      ~{true="--man" false="" manMan} \
      ~{fileFile}
  >>>
}