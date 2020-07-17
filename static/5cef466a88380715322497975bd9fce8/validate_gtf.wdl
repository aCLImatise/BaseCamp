version 1.0

task ValidateGtf.pl {
  input {
    Boolean? output_list_inframe
    Boolean? suppress_warnings_missing
    Boolean? suppress_warnings_bad
    Boolean? output_list_
    Boolean? output_list_training
    Boolean? output_list_evaluation
    Boolean? options
    Boolean? more_options
  }
  command <<<
    validate_gtf.pl \
      ~{true="-s" false="" output_list_inframe} \
      ~{true="-c" false="" suppress_warnings_missing} \
      ~{true="-p" false="" suppress_warnings_bad} \
      ~{true="-k" false="" output_list_} \
      ~{true="-l" false="" output_list_training} \
      ~{true="-m" false="" output_list_evaluation} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    output_list_inframe: ": output list of inframe stop genes."
    suppress_warnings_missing: ": suppress warnings about missing start/stop"
    suppress_warnings_bad: ": suppress warnings about bad splice site sequence"
    output_list_: ": output a list of bad genes for \"super-clean\" training set"
    output_list_training: ": output a list of bad genes for training applications"
    output_list_evaluation: ": output a list of bad genes for evaluation purposes"
    options: ""
    more_options: ""
  }
}