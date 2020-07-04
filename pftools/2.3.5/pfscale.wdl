version 1.0

task Pfscale {
  input {
    Boolean? impose_limit_line
    Boolean? value_logarithmic_base
    Boolean? value_profile_mode
    Boolean? value_database_size
    Boolean? value_upper_threshold
    Boolean? value_lower_threshold
    Boolean? lhl_mn_pq
  }
  command <<<
    pfscale \
      ~{true="-l" false="" impose_limit_line} \
      ~{true="-L" false="" value_logarithmic_base} \
      ~{true="-M" false="" value_profile_mode} \
      ~{true="-N" false="" value_database_size} \
      ~{true="-P" false="" value_upper_threshold} \
      ~{true="-Q" false="" value_lower_threshold} \
      ~{true="-lhLMNPQ" false="" lhl_mn_pq}
  >>>
  parameter_meta {
    impose_limit_line: ": do not impose limit on line length."
    value_logarithmic_base: "<value>: logarithmic base of parameters (default: 10)."
    value_profile_mode: "<value>: profile mode number to scale."
    value_database_size: "<value>: database size (default: 14147368)."
    value_upper_threshold: "<value>: upper threshold of probability range (default: 0.0001)."
    value_lower_threshold: "<value>: lower threshold of probability range (default: 0.000001)."
    lhl_mn_pq: ""
  }
}