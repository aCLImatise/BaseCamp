version 1.0

task Seqretsetall {
  input {
    Boolean? feature
  }
  command <<<
    seqretsetall \
      ~{if (feature) then "-feature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature: "boolean    Use feature information"
  }
  output {
    File out_stdout = stdout()
  }
}