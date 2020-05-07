version 1.0

task RnazBEDstats.pl {
  input {
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazBEDstats.pl \
      ~{fileFile} \
      ~{true="--man" false="" manMan}
  >>>
}