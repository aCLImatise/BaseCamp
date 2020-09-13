version 1.0

task Poolpy {
  input {
    String? round_params
    Boolean? use_nd
    Array[String] loss_coeffs
    File? dataset_weights
    Boolean? debug
    Boolean? verbose
    String probe_count_tsv
    String target_probe_count
    String param_vals_tsv
    String values
  }
  command <<<
    pool_py \
      ~{probe_count_tsv} \
      ~{target_probe_count} \
      ~{param_vals_tsv} \
      ~{values} \
      ~{if defined(round_params) then ("--round-params " +  '"' + round_params + '"') else ""} \
      ~{if (use_nd) then "--use-nd" else ""} \
      ~{if defined(loss_coeffs) then ("--loss-coeffs " +  '"' + loss_coeffs + '"') else ""} \
      ~{if defined(dataset_weights) then ("--dataset-weights " +  '"' + dataset_weights + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    round_params: "ROUND_PARAMS\\n<m> <e>; round mismatches parameter to the nearest\\nmultiple of m and cover_extension parameter to the\\nnearest multiple of e"
    use_nd: "Use the higher dimensional (n > 2) interpolation and\\nsearch functions for optimizing parameters. This is\\nrequired if the input table of probe counts contains\\nmore than 2 parameters. This does not round parameters\\nto integers or to be placed on a grid -- i.e., they\\nwill be output as fractional values (from which probe\\ncounts were interpolated). When using this, --loss-\\ncoeffs should also be set (default is 1 for all\\nparameters)."
    loss_coeffs: "Coefficients on parameters in the loss function. These\\nmust be specified in the same order as the parameter\\ncolumns in the input table. Default is 1 for\\nmismatches and 1/100 for cover_extension (or, when\\n--use-nd is specified, 1 for all parameters)."
    dataset_weights: "Path to TSV file that contains a weight for each\\ndataset to use in the loss function. The first row\\nmust be a header, the first column must provide the\\ndataset ('dataset') and the second column must provide\\nthe weight of the dataset ('weight'). If not provided,\\nthe default is a weight of 1 for each dataset."
    debug: "Debug output"
    verbose: "Verbose output"
    probe_count_tsv: "Path to TSV file that contains probe counts for each\\ndataset and combination of parameters; the first row\\nmust be a header, the first column must give a dataset\\n('dataset'), the last column must list a number of\\nprobes ('num_probes'), and the intermediary columns\\ngive parameter values"
    target_probe_count: "Constraint on the total number of probes in the\\ndesign; generally, parameters will be selected such\\nthat the number of probes, when pooled across\\ndatasets, is just below this number"
    param_vals_tsv: "Path to TSV file in which to output optimal parameter"
    values: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}