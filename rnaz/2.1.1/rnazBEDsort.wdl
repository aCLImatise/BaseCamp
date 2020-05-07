version 1.0

task RnazBEDsort.pl {
  input {
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazBEDsort.pl \
      ~{fileFile} \
      ~{true="--man" false="" manMan}
  >>>
}