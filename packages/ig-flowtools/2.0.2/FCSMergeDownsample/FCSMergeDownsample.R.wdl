version 1.0

task FCSMergeDownsampleR {
  input {
    String union
    String normalize
  }
  command <<<
    FCSMergeDownsample_R \
      ~{union} \
      ~{normalize}
  >>>
  parameter_meta {
    union: "Attaching package: 'flowCore'"
    normalize: "Error in if (args[2] == \\\"FCS\\\") { : missing value where TRUE/FALSE needed"
  }
  output {
    File out_stdout = stdout()
  }
}