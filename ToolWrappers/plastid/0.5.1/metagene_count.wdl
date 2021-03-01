version 1.0

task MetageneCount {
  input {
    Int? min_counts
    Int? normalize_over
    Int? norm_region
    String? landmark
    Boolean? use_mean
    Boolean? keep
    Boolean? quiet
    Boolean? verbose
    Array[String] count_files
    String? count_file_format
    String? sum
    Int? min_length
    Int? max_length
    Int? maxmem
    Boolean? big_genome
    Boolean? five_prime_variable
    Boolean? five_prime
    Boolean? three_prime
    Boolean? center
    Int? offset
    Int? nibble
    String? fig_format
    String? fig_size
    String? title
    Int? cmap
    Int? dpi
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
      ~{if (use_mean) then "--use_mean" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(count_files) then ("--count_files " +  '"' + count_files + '"') else ""} \
      ~{if defined(count_file_format) then ("--countfile_format " +  '"' + count_file_format + '"') else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{if (big_genome) then "--big_genome" else ""} \
      ~{if (five_prime_variable) then "--fiveprime_variable" else ""} \
      ~{if (five_prime) then "--fiveprime" else ""} \
      ~{if (three_prime) then "--threeprime" else ""} \
      ~{if (center) then "--center" else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(nibble) then ("--nibble " +  '"' + nibble + '"') else ""} \
      ~{if defined(fig_format) then ("--figformat " +  '"' + fig_format + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (stylesheet) then "--stylesheet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_counts: "Minimum counts required in normalization region to be\\nincluded in metagene average (Default: 10)"
    normalize_over: "N  Portion of each window against which its individual\\nraw count profile will be normalized. Specify two\\nintegers, in nucleotide distance from landmark\\n(negative for upstream, positive for downstream.\\nSurround negative numbers with quotes.). (Default: 20\\n50)"
    norm_region: "N     Deprecated. Use ``--normalize_over`` instead.\\nFormerly, Portion of each window against which its\\nindividual raw count profile will be normalized.\\nSpecify two integers, in nucleotide distance, from 5'\\nend of window. (Default: 70 100)"
    landmark: "Name of landmark at zero point, optional."
    use_mean: "If supplied, use columnwise mean to generate profile\\n(Default: use median)"
    keep: "Save intermediate count files. Useful for additional\\ncomputations (Default: False)"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    count_files: "One or more count or alignment file(s) from a single\\nsample or set of samples to be pooled."
    count_file_format: "Format of file containing alignments or counts\\n(Default: BAM)"
    sum: "Sum used in normalization of counts and RPKM/RPNT\\ncalculations (Default: total mapped reads/counts in\\ndataset)"
    min_length: "Minimum read length required to be included (BAM &\\nbowtie files only. Default: 25)"
    max_length: "Maximum read length permitted to be included (BAM &\\nbowtie files only. Default: 100)"
    maxmem: "Maximum desired memory footprint in MB to devote to\\nBigBed/BigWig files. May be exceeded by large queries.\\n(Default: 0, No maximum)"
    big_genome: "Use slower but memory-efficient implementation for big\\ngenomes or for memory-limited computers. For wiggle &\\nbowtie files only."
    five_prime_variable: "Map read alignment to a variable offset from 5'\\nposition of read, with offset determined by read\\nlength. Requires `--offset` below"
    five_prime: "Map read alignment to 5' position."
    three_prime: "Map read alignment to 3' position"
    center: "Subtract N positions from each end of read, and add\\n1/(length-N), to each remaining position, where N is\\nspecified by `--nibble`"
    offset: "For `--fiveprime` or `--threeprime`, provide an\\ninteger representing the offset into the read,\\nstarting from either the 5' or 3' end, at which data\\nshould be plotted. For `--fiveprime_variable`, provide\\nthe filename of a two-column tab-delimited text file,\\nin which first column represents read length or the\\nspecial keyword `'default'`, and the second column\\nrepresents the offset from the five prime end of that\\nread length at which the read should be mapped.\\n(Default: 0)"
    nibble: "For use with `--center` only. nt to remove from each\\nend of read before mapping (Default: 0)"
    fig_format: "File format for figure(s); Default: png)"
    fig_size: "N         Figure width and height, in inches. (Default: use\\nmatplotlibrc params)"
    title: "Base title for plot(s)."
    cmap: "Matplotlib color map from which palette will be made\\n(e.g. 'Blues','autumn','Set1'; default: use colors\\nfrom ``--stylesheet`` if given, or color cycle in\\nmatplotlibrc)"
    dpi: "Figure resolution (Default: 150)"
    stylesheet: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\\nUse this matplotlib stylesheet instead of matplotlibrc\\nparams\\n"
    roi_file: "Text file containing maximal spanning windows and\\noffsets, generated by the ``generate`` subprogram."
    out_base: "Basename for output files"
  }
  output {
    File out_stdout = stdout()
  }
}