version 1.0

task FlowSOMCompareR {
  input {
    String union
  }
  command <<<
    FlowSOMCompare_R \
      ~{union}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    union: "Attaching package: 'flowCore'"
  }
  output {
    File out_stdout = stdout()
  }
}