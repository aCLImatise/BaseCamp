version 1.0

task Splitsource {
  input {
    Boolean? feature
  }
  command <<<
    splitsource \
      ~{if (feature) then "-feature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature: "boolean    [N] Retain feature information"
  }
  output {
    File out_stdout = stdout()
  }
}