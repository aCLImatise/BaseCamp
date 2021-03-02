version 1.0

task FlowSOMMApIndividualFCSR {
  input {
    String union
    String normalize
  }
  command <<<
    FlowSOMMApIndividualFCS_R \
      ~{union} \
      ~{normalize}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    union: "Attaching package: 'flowCore'"
    normalize: "Error in if (args[4] == \\\"meta\\\") { : missing value where TRUE/FALSE needed"
  }
  output {
    File out_stdout = stdout()
  }
}