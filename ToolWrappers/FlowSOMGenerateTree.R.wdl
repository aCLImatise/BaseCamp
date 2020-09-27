version 1.0

task FlowSOMGenerateTreeR {
  input {
    String union
    String normalize
  }
  command <<<
    FlowSOMGenerateTree_R \
      ~{union} \
      ~{normalize}
  >>>
  parameter_meta {
    union: "Attaching package: 'flowCore'"
    normalize: "Error in if (args[3] == \\\"\\\" || args[3] == \\\"i.e.:1,2,5\\\") { : "
  }
  output {
    File out_stdout = stdout()
  }
}