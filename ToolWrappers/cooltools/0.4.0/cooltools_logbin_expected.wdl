version 1.0

task CooltoolsLogbinexpected {
  input {
    Float? bins_per_order_magnitude
    Int? bin_layout
    Int? min_n_valid
    Int? min_count
    String? spread_funcs
    String? spread_funcs_slope
    String? resolution
    String name_dot
  }
  command <<<
    cooltools logbin_expected \
      ~{name_dot} \
      ~{if defined(bins_per_order_magnitude) then ("--bins-per-order-magnitude " +  '"' + bins_per_order_magnitude + '"') else ""} \
      ~{if defined(bin_layout) then ("--bin-layout " +  '"' + bin_layout + '"') else ""} \
      ~{if defined(min_n_valid) then ("--min-nvalid " +  '"' + min_n_valid + '"') else ""} \
      ~{if defined(min_count) then ("--min-count " +  '"' + min_count + '"') else ""} \
      ~{if defined(spread_funcs) then ("--spread-funcs " +  '"' + spread_funcs + '"') else ""} \
      ~{if defined(spread_funcs_slope) then ("--spread-funcs-slope " +  '"' + spread_funcs_slope + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    bins_per_order_magnitude: "How many bins per order of magnitude.\\nDefault of 10 has a ratio of neighboring\\nbins of about 1.25  [default: 10]"
    bin_layout: "'fixed' means that bins are exactly the same\\nfor different datasets, and only depend on\\nbins_per_order_magnitude 'longest_regio'\\nmeans that the last bin will end at size of\\nthe longest region.  GOOD: the last bin will\\nhave as much data as possible.  BAD: bin\\nedges will end up different for different\\ndatasets, you can't divide them by each\\nother  [default: fixed]"
    min_n_valid: "For each region, throw out bins (log-spaced)\\nthat have less than min_nvalid valid pixels.\\nThis will ensure that each entree in Pc by\\nregion has at least n_valid valid pixels.\\nDon't set it to zero, or it will introduce\\nbugs. Setting it to 1 is OK, but not\\nrecommended.  [default: 200]"
    min_count: "If counts are found in the data, then for\\neach region, throw out bins (log-spaced)\\nthat have more than min_counts of counts.sum\\n(raw Hi-C counts). This will ensure that\\neach entree in P(s) by region has at least\\nmin_count raw Hi-C reads  [default: 50]"
    spread_funcs: "A way to estimate the spread of the P(s)\\ncurves between regions. * 'minmax' - the\\nminimum/maximum of by-region P(s) * 'std' -\\nweighted standard deviation of P(s) curves\\n(may produce negative results)  * 'logstd'\\n(recommended) weighted standard deviation in\\nlogspace  [default: logstd]"
    spread_funcs_slope: "Same as spread-funcs, but for slope\\n(derivative) ratehr than P(s)  [default:\\nstd]"
    resolution: "Data resolution in bp. If provided,\\nadditonal column of separation in bp (s_bp)\\nwill be added to the outputs"
    name_dot: "OUTPUT_PREFIX: Output file name prefix to store the logbinned expected"
  }
  output {
    File out_stdout = stdout()
  }
}