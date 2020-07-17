version 1.0

task KinSimRiboMergeRateMats {
  input {
    Boolean? allow_disconnected_matrix
    Boolean? _be_verbose
    String? params
    String mon_dot_rates
    String dim_dot_rates
  }
  command <<<
    kinSimRibo_mergeRateMats \
      ~{params} \
      ~{mon_dot_rates} \
      ~{dim_dot_rates} \
      ~{true="-d" false="" allow_disconnected_matrix} \
      ~{true="-v" false="" _be_verbose}
  >>>
  parameter_meta {
    allow_disconnected_matrix: ":     Allow disconnected matrix / do not check whether A and B are connected."
    _be_verbose: ":     Be verbose"
    params: ""
    mon_dot_rates: ""
    dim_dot_rates: ""
  }
}