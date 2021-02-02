version 1.0

task Mglexcli {
  input {
    Boolean? v
    Boolean? help
  }
  command <<<
    mglex_cli \
      ~{if (v) then "-v" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    v: ""
    help: ""
  }
  output {
    File out_stdout = stdout()
  }
}