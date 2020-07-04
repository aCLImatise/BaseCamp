version 1.0

task RnazFilter.pl {
  input {
    Boolean? count
    Boolean? man
  }
  command <<<
    rnazFilter.pl \
      ~{true="--count" false="" count} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    count: "Count the windows/loci instead of printing them."
    man: "Prints a detailed manual page and exits."
  }
}