version 1.0

task SvmClassify {
  input {
    Boolean? verbosity_level_default
    Boolean? old_output_format
    String example_file
    String model_file
    String output_file
  }
  command <<<
    svm_classify \
      ~{example_file} \
      ~{model_file} \
      ~{output_file} \
      ~{true="-v" false="" verbosity_level_default} \
      ~{true="-f" false="" old_output_format}
  >>>
  parameter_meta {
    verbosity_level_default: "[0..3]  -> verbosity level (default 2)"
    old_output_format: "[0,1]   -> 0: old output format of V1.0 -> 1: output the value of decision function (default)"
    example_file: ""
    model_file: ""
    output_file: ""
  }
}