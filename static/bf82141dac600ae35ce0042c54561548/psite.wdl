version 1.0

task Psite {
  input {
    String? min_counts
    String? normalize_over
    String? norm_region
    Boolean? require_upstream
    String? constrain
    Boolean? aggregate
    Boolean? keep
    String? default
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    String? sum
    String? min_length
    String? max_length
    String? fig_format
    String? fig_size
    String? title
    String? cmap
    String? dpi
    Boolean? stylesheet
    String out_base_meta_gene_profiles_dot_txt
    String out_base_k_raw_counts_dot_txt
    String out_base_k_norm_counts_dot_txt
    String roi_file
    String out_base
  }
  command <<<
    psite \
      ~{out_base_meta_gene_profiles_dot_txt} \
      ~{out_base_k_raw_counts_dot_txt} \
      ~{out_base_k_norm_counts_dot_txt} \
      ~{roi_file} \
      ~{out_base} \
      ~{if defined(min_counts) then ("--min_counts " +  '"' + min_counts + '"') else ""} \
      ~{if defined(normalize_over) then ("--normalize_over " +  '"' + normalize_over + '"') else ""} \
      ~{if defined(norm_region) then ("--norm_region " +  '"' + norm_region + '"') else ""} \
      ~{true="--require_upstream" false="" require_upstream} \
      ~{if defined(constrain) then ("--constrain " +  '"' + constrain + '"') else ""} \
      ~{true="--aggregate" false="" aggregate} \
      ~{true="--keep" false="" keep} \
      ~{if defined(default) then ("--default " +  '"' + default + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
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
      ~{true="--stylesheet" false="" stylesheet}
  >>>
  parameter_meta {
    min_counts: "Minimum counts required in normalization region to be included in metagene average (Default: 10)"
    normalize_over: "N  Portion of each window against which its individual raw count profile will be normalized. Specify two integers, in nucleotide distance from landmark (negative for upstream, positive for downstream. Surround negative numbers with quotes.). (Default: 20 50)"
    norm_region: "N     Deprecated. Use ``--normalize_over`` instead. Formerly, Portion of each window against which its individual raw count profile will be normalized. Specify two integers, in nucleotide distance, from 5' end of window. (Default: 70 100)"
    require_upstream: "If supplied, the P-site offset is taken to be the distance between the largest peak upstream of the start codon and the start codon itself. Otherwise, the P-site offset is taken to be the distance between the largest peak in the entire ROI and the start codon. Ignored if ``--constrain`` is used."
    constrain: "X       Constrain P-site offset to be between specified distance from start codon. Useful for noisy data. (Reasonable set: 10 15; default: not constrained)"
    aggregate: "Estimate P-site from aggregate reads at each position, instead of median normalized read density. Noisier, but helpful for lower-count data or read lengths with few counts. (Default: False)"
    keep: "Save intermediate count files. Useful for additional computations (Default: False)"
    default: "Default 5' P-site offset for read lengths that are not present or evaluated in the dataset. Unaffected by ``--constrain`` (Default: 13)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single sample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts (Default: BAM)"
    sum: "Sum used in normalization of counts and RPKM/RPNT calculations (Default: total mapped reads/counts in dataset)"
    min_length: "Minimum read length required to be included (BAM & bowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM & bowtie files only. Default: 100)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use matplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1'; default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10} Use this matplotlib stylesheet instead of matplotlibrc params"
    out_base_meta_gene_profiles_dot_txt: "Metagene profiles, stratified by read length, before P-site offsets are applied."
    out_base_k_raw_counts_dot_txt: "Saved if ``--keep`` is given on command line. Raw count vectors for each metagene window specified in input ROI file, without P-site mapping rules applied, for reads of length `K`"
    out_base_k_norm_counts_dot_txt: "Saved if ``--keep`` is given on command line. Normalized count vectors for each metagene window specified in input ROI file, without P-site mapping rules applied, for reads of length `K`"
    roi_file: "ROI file surrounding start codons, from ``metagene generate`` subprogram"
    out_base: "Basename for output files"
  }
}