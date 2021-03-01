version 1.0

task Seqret {
  input {
    Boolean? feature
    Boolean? first_only
  }
  command <<<
    _seqret \
      ~{if (feature) then "-feature" else ""} \
      ~{if (first_only) then "-firstonly" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature: "boolean    Use feature information"
    first_only: "boolean    [N] Read one sequence and stop"
  }
  output {
    File out_stdout = stdout()
  }
}