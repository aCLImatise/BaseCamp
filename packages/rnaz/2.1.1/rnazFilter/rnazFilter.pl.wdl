version 1.0

task RnazFilterpl {
  input {
    Boolean? count
    Boolean? man
  }
  command <<<
    rnazFilter_pl \
      ~{if (count) then "--count" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    count: "Count the windows/loci instead of printing them."
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
  }
}