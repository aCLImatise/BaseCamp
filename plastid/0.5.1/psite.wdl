version 1.0

task Psite {
  input {
    Int? min_counts
    Int? normalize_over
    Int? norm_region
    Boolean? require_upstream
    Int? constrain
    Boolean? aggregate
    Boolean? keep
    Int? default
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    String? sum
    Int? min_length
    Int? max_length
    String? fig_format
    String? fig_size
    String? title
    Int? cmap
    Int? dpi
    Boolean? stylesheet
    String out_base_p_offsets_dot_txt
    String out_base_meta_gene_profiles_dot_txt
    String out_base_k_raw_counts_dot_txt
    String out_base_k_norm_counts_dot_txt
    String roi_file
    String out_base
  }
  command <<<
    psite \
      ~{out_base_p_offsets_dot_txt} \
      ~{out_base_meta_gene_profiles_dot_txt} \
      ~{out_base_k_raw_counts_dot_txt} \
      ~{out_base_k_norm_counts_dot_txt} \
      ~{roi_file} \
      ~{out_base} \
      ~{if defined(min_counts) then ("--min_counts " +  '"' + min_counts + '"') else ""} \
      ~{if defined(normalize_over) then ("--normalize_over " +  '"' + normalize_over + '"') else ""} \
      ~{if defined(norm_region) then ("--norm_region " +  '"' + norm_region + '"') else ""} \
      ~{if (require_upstream) then "--require_upstream" else ""} \
      ~{if defined(constrain) then ("--constrain " +  '"' + constrain + '"') else ""} \
      ~{if (aggregate) then "--aggregate" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(default) then ("--default " +  '"' + default + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(fig_format) then ("--figformat " +  '"' + fig_format + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (stylesheet) then "--stylesheet" else ""}
  >>>
  parameter_meta {
    min_counts: "Minimum counts required in normalization region to be\\nincluded in metagene average (Default: 10)"
    normalize_over: "N  Portion of each window against which its individual\\nraw count profile will be normalized. Specify two\\nintegers, in nucleotide distance from landmark\\n(negative for upstream, positive for downstream.\\nSurround negative numbers with quotes.). (Default: 20\\n50)"
    norm_region: "N     Deprecated. Use ``--normalize_over`` instead.\\nFormerly, Portion of each window against which its\\nindividual raw count profile will be normalized.\\nSpecify two integers, in nucleotide distance, from 5'\\nend of window. (Default: 70 100)"
    require_upstream: "If supplied, the P-site offset is taken to be the\\ndistance between the largest peak upstream of the\\nstart codon and the start codon itself. Otherwise, the\\nP-site offset is taken to be the distance between the\\nlargest peak in the entire ROI and the start codon.\\nIgnored if ``--constrain`` is used."
    constrain: "X       Constrain P-site offset to be between specified\\ndistance from start codon. Useful for noisy data.\\n(Reasonable set: 10 15; default: not constrained)"
    aggregate: "Estimate P-site from aggregate reads at each position,\\ninstead of median normalized read density. Noisier,\\nbut helpful for lower-count data or read lengths with\\nfew counts. (Default: False)"
    keep: "Save intermediate count files. Useful for additional\\ncomputations (Default: False)"
    default: "Default 5' P-site offset for read lengths that are not\\npresent or evaluated in the dataset. Unaffected by\\n``--constrain`` (Default: 13)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single\\nsample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts\\n(Default: BAM)"
    sum: "Sum used in normalization of counts and RPKM/RPNT\\ncalculations (Default: total mapped reads/counts in\\ndataset)"
    min_length: "Minimum read length required to be included (BAM &\\nbowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM &\\nbowtie files only. Default: 100)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use\\nmatplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made\\n(e.g. 'Blues','autumn','Set1'; default: use colors\\nfrom ``--stylesheet`` if given, or color cycle in\\nmatplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\\nUse this matplotlib stylesheet instead of matplotlibrc\\nparams\\n"
    out_base_p_offsets_dot_txt: "Tab-delimited text file with two columns. The first is read length,\\nand the second the offset from the fiveprime end of that read length\\nto the ribosomal P-site. This table can be supplied as the argument\\nfor ``--offset`` when using ``--fiveprime_variable`` mapping in any\\nof the other scripts in plastid.bin"
    out_base_meta_gene_profiles_dot_txt: "Metagene profiles, stratified by read length, before P-site offsets\\nare applied."
    out_base_k_raw_counts_dot_txt: "Saved if ``--keep`` is given on command line. Raw count vectors for each\\nmetagene window specified in input ROI file, without P-site\\nmapping rules applied, for reads of length `K`"
    out_base_k_norm_counts_dot_txt: "Saved if ``--keep`` is given on command line. Normalized count vectors\\nfor each metagene window specified in input ROI file, without P-site\\nmapping rules applied, for reads of length `K`"
    roi_file: "ROI file surrounding start codons, from ``metagene\\ngenerate`` subprogram"
    out_base: "Basename for output files"
  }
  output {
    File out_stdout = stdout()
  }
}