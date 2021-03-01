version 1.0

task Ct2rnaml {
  input {
    Boolean? help_dot_ct
  }
  command <<<
    ct2rnaml \
      ~{if (help_dot_ct) then "--help.ct" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_dot_ct: ": No such file or directory"
  }
  output {
    File out_stdout = stdout()
  }
}