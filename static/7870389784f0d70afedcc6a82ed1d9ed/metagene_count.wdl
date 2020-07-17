version 1.0

task MetageneCount {
  input {
    String? min_counts
    String? normalize_over
    String? norm_region
    String? landmark
    Boolean? use_mean
    Boolean? keep
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    String? sum
    String? min_length
    String? max_length
    Int? maxmem
    Boolean? big_genome
    Boolean? five_prime_variable
    Boolean? five_prime
    Boolean? three_prime
    Boolean? center
    String? offset
    String? nibble
    String? fig_format
    String? fig_size
    String? title
    String? cmap
    String? dpi
    Boolean? stylesheet
    String roi_file
    String out_base
  }
  command <<<
    metagene count \
      ~{roi_file} \
      ~{out_base} \
      ~{if defined(min_counts) then ("--min_counts " +  '"' + min_counts + '"') else ""} \
      ~{if defined(normalize_over) then ("--normalize_over " +  '"' + normalize_over + '"') else ""} \
      ~{if defined(norm_region) then ("--norm_region " +  '"' + norm_region + '"') else ""} \
      ~{if defined(landmark) then ("--landmark " +  '"' + landmark + '"') else ""} \
      ~{true="--use_mean" false="" use_mean} \
      ~{true="--keep" false="" keep} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{true="--big_genome" false="" big_genome} \
      ~{true="--fiveprime_variable" false="" five_prime_variable} \
      ~{true="--fiveprime" false="" five_prime} \
      ~{true="--threeprime" false="" three_prime} \
      ~{true="--center" false="" center} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(nibble) then ("--nibble " +  '"' + nibble + '"') else ""} \
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
    landmark: "Name of landmark at zero point, optional."
    use_mean: "If supplied, use columnwise mean to generate profile (Default: use median)"
    keep: "Save intermediate count files. Useful for additional computations (Default: False)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single sample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts (Default: BAM)"
    sum: "Sum used in normalization of counts and RPKM/RPNT calculations (Default: total mapped reads/counts in dataset)"
    min_length: "Minimum read length required to be included (BAM & bowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM & bowtie files only. Default: 100)"
    maxmem: "Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May be exceeded by large queries. (Default: 0, No maximum)"
    big_genome: "Use slower but memory-efficient implementation for big genomes or for memory-limited computers. For wiggle & bowtie files only."
    five_prime_variable: "Map read alignment to a variable offset from 5' position of read, with offset determined by read length. Requires `--offset` below"
    five_prime: "Map read alignment to 5' position."
    three_prime: "Map read alignment to 3' position"
    center: "Subtract N positions from each end of read, and add 1/(length-N), to each remaining position, where N is specified by `--nibble`"
    offset: "For `--fiveprime` or `--threeprime`, provide an integer representing the offset into the read, starting from either the 5' or 3' end, at which data should be plotted. For `--fiveprime_variable`, provide the filename of a two-column tab-delimited text file, in which first column represents read length or the special keyword `'default'`, and the second column represents the offset from the five prime end of that read length at which the read should be mapped. (Default: 0)"
    nibble: "For use with `--center` only. nt to remove from each end of read before mapping (Default: 0)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use matplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1'; default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10} Use this matplotlib stylesheet instead of matplotlibrc params"
    roi_file: "Text file containing maximal spanning windows and offsets, generated by the ``generate`` subprogram."
    out_base: "Basename for output files"
  }
}