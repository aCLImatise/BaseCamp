version 1.0

task RnazBEDsort.pl {
  input {
    Boolean? man
    File? file
  }
  command <<<
    rnazBEDsort.pl \
      ~{file} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    man: "Prints a detailed manual page and exits."
    file: ""
  }
}