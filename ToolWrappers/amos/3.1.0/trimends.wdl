version 1.0

task Trimends {
  input {
    Boolean? help_dot_qual
  }
  command <<<
    trimends \
      ~{if (help_dot_qual) then "--help.qual" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_dot_qual: ", and --help.frg must exist"
  }
  output {
    File out_stdout = stdout()
  }
}