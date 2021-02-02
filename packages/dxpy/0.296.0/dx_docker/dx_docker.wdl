version 1.0

task Dxdocker {
  input {
    Boolean? quiet
  }
  command <<<
    dx_docker \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    quiet: "Suppress printing pull progress to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}