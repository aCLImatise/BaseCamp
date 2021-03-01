version 1.0

task RnazBEDstatspl {
  input {
    Boolean? man
  }
  command <<<
    rnazBEDstats_pl \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
  }
}