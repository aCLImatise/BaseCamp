version 1.0

task Alistat {
  input {
    Boolean? report_persequence_info
    Boolean? fast_estimate_average
    Boolean? quiet_suppress_verbose
    Boolean? options
    String alignment_file
  }
  command <<<
    alistat \
      ~{alignment_file} \
      ~{true="-a" false="" report_persequence_info} \
      ~{true="-f" false="" fast_estimate_average} \
      ~{true="-q" false="" quiet_suppress_verbose} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    report_persequence_info: ": report per-sequence info, not just a summary"
    fast_estimate_average: ": fast: estimate average %id by sampling (not compatible with -a)"
    quiet_suppress_verbose: ": quiet: suppress verbose header"
    options: ""
    alignment_file: ""
  }
}