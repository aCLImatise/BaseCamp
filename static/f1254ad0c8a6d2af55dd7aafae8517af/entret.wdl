version 1.0

task Entret {
  input {
    Boolean? first_only
  }
  command <<<
    entret \
      ~{if (first_only) then "-firstonly" else ""}
  >>>
  parameter_meta {
    first_only: "boolean    Read one sequence and stop"
  }
  output {
    File out_stdout = stdout()
  }
}