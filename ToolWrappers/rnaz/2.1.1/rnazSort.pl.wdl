version 1.0

task RnazSortpl {
  input {
    Boolean? reverse
    Boolean? no_loci
    Boolean? man
    String key
  }
  command <<<
    rnazSort_pl \
      ~{key} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (no_loci) then "--no-loci" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse: "Sort in reverse order."
    no_loci: "Do not preserve the locus grouping but simply sort the windows."
    man: "Prints a detailed manual page and exits."
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}