version 1.0

task CsChart {
  input {
    Array[String] in
    Array[String] bins
    Array[String] regions
    Array[String] metrics
    Boolean? quiet
    Boolean? verbose
    String? fig_format
    String? fig_size
    String? title
    Int? cmap
    Int? dpi
    Boolean? stylesheet
    String gene_list_dot_txt
    String out_base
  }
  command <<<
    cs chart \
      ~{gene_list_dot_txt} \
      ~{out_base} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(metrics) then ("--metrics " +  '"' + metrics + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(fig_format) then ("--figformat " +  '"' + fig_format + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (stylesheet) then "--stylesheet" else ""}
  >>>
  parameter_meta {
    in: "input files, made by 'count' subprogram"
    bins: "Bins into which features are partitioned based on\\ncounts"
    regions: "Regions to compare (default: exon, utr5, cds, utr3)"
    metrics: "Metrics to compare (default: rpkm, reads)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use\\nmatplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made\\n(e.g. 'Blues','autumn','Set1'; default: use colors\\nfrom ``--stylesheet`` if given, or color cycle in\\nmatplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\\nUse this matplotlib stylesheet instead of matplotlibrc\\nparams\\n"
    gene_list_dot_txt: "Optional. File listing regions (genes or transcripts),\\none per line, to include in comparisons. If not given,\\nall genes are included."
    out_base: "Basename for output files"
  }
  output {
    File out_stdout = stdout()
  }
}