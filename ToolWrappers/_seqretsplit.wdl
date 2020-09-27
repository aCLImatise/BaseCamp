version 1.0

task Seqretsplit {
  input {
    Boolean? feature
    Boolean? first_only
  }
  command <<<
    _seqretsplit \
      ~{if (feature) then "-feature" else ""} \
      ~{if (first_only) then "-firstonly" else ""}
  >>>
  parameter_meta {
    feature: "boolean    Use feature information"
    first_only: "boolean    Read one sequence and stop"
  }
  output {
    File out_stdout = stdout()
  }
}