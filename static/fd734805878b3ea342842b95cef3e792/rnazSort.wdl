version 1.0

task RnazSort.pl {
  input {
    Boolean? reverse
    Boolean? no_loci
    Boolean? man
    String key
    File? file
  }
  command <<<
    rnazSort.pl \
      ~{key} \
      ~{file} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--no-loci" false="" no_loci} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    reverse: "Sort in reverse order."
    no_loci: "Do not preserve the locus grouping but simply sort the windows."
    man: "Prints a detailed manual page and exits."
    key: ""
    file: ""
  }
}