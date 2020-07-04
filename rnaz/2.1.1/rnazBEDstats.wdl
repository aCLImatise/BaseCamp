version 1.0

task RnazBEDstats.pl {
  input {
    Boolean? man
    File? file
  }
  command <<<
    rnazBEDstats.pl \
      ~{file} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    man: "Prints a detailed manual page and exits."
    file: ""
  }
}