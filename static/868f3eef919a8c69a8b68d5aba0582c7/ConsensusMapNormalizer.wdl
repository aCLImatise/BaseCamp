version 1.0

task ConsensusMapNormalizer {
  input {
    File? in
    File? out
    String? algorithm_type
    Int? ratio_threshold
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ConsensusMapNormalizer \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(algorithm_type) then ("-algorithm_type " +  '"' + algorithm_type + '"') else ""} \
      ~{if defined(ratio_threshold) then ("-ratio_threshold " +  '"' + ratio_threshold + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*               Input file (valid formats: 'consensusXML')"
    out: "*              Output file (valid formats: 'consensusXML')"
    algorithm_type: "The normalization algorithm that is applied. 'robust_regression' scales each map by a fator computed from the ratios of non-differential background features (as determined by the ratio_threshold parameter), 'quantile' performs quantile normalization, 'median' scales all maps to the same median intensity, 'median_shift' shifts the median instead of scaling (WARNING: if you have regular, log-normal MS data, 'median_shift' is probably the wrong choice. Use only if you know what you're doing!) (default: 'robust_regression' valid: 'robust_regression', 'median', 'median_shift', 'quantile')"
    ratio_threshold: "Only for 'robust_regression': the parameter is used to distinguish between non-outliers (ratio_threshold < intensity ratio < 1/ratio_threshold) and outliers. (default: '0.67' min: '0.001' max: '1')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}