version 1.0

task Pool.py {
  input {
    Boolean? use_nd
    Array[String] loss_coeffs
    String? dataset_weights
    Boolean? debug
    Boolean? verbose
    String? round_params
    String probe_count_tsv
    String target_probe_count
    String param_vals_tsv
  }
  command <<<
    pool.py \
      ~{probe_count_tsv} \
      ~{target_probe_count} \
      ~{param_vals_tsv} \
      ~{true="--use-nd" false="" use_nd} \
      ~{if defined(loss_coeffs) then ("--loss-coeffs " +  '"' + loss_coeffs + '"') else ""} \
      ~{if defined(dataset_weights) then ("--dataset-weights " +  '"' + dataset_weights + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(round_params) then ("--round-params " +  '"' + round_params + '"') else ""}
  >>>
  parameter_meta {
    use_nd: "Use the higher dimensional (n > 2) interpolation and search functions for optimizing parameters. This is required if the input table of probe counts contains more than 2 parameters. This does not round parameters to integers or to be placed on a grid -- i.e., they will be output as fractional values (from which probe counts were interpolated). When using this, --loss- coeffs should also be set (default is 1 for all parameters)."
    loss_coeffs: "Coefficients on parameters in the loss function. These must be specified in the same order as the parameter columns in the input table. Default is 1 for mismatches and 1/100 for cover_extension (or, when --use-nd is specified, 1 for all parameters)."
    dataset_weights: "Path to TSV file that contains a weight for each dataset to use in the loss function. The first row must be a header, the first column must provide the dataset ('dataset') and the second column must provide the weight of the dataset ('weight'). If not provided, the default is a weight of 1 for each dataset."
    debug: "Debug output"
    verbose: "Verbose output"
    round_params: ""
    probe_count_tsv: "Path to TSV file that contains probe counts for each dataset and combination of parameters; the first row must be a header, the first column must give a dataset ('dataset'), the last column must list a number of probes ('num_probes'), and the intermediary columns give parameter values"
    target_probe_count: "Constraint on the total number of probes in the design; generally, parameters will be selected such that the number of probes, when pooled across datasets, is just below this number"
    param_vals_tsv: "Path to TSV file in which to output optimal parameter values"
  }
}