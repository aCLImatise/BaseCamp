version 1.0

task PauvreMarginplot {
  input {
    Boolean? quiet
    String? dpi
    String? fast_q
    Array[String] file_form
    String? filt_maxlen
    String? filt_max_qual
    String? filt_min_len
    String? filt_min_qual
    String? km_erdf
    Boolean? no_transparent
    Boolean? no_timestamp
    String? output_base_name
    String? plot_maxlen
    String? plot_max_qual
    String? plot_min_len
    String? plot_min_qual
    Int? length_bin
    String? qual_bin
    String? title
    Boolean? add_y_axes
  }
  command <<<
    pauvre marginplot \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(file_form) then ("--fileform " +  '"' + file_form + '"') else ""} \
      ~{if defined(filt_maxlen) then ("--filt_maxlen " +  '"' + filt_maxlen + '"') else ""} \
      ~{if defined(filt_max_qual) then ("--filt_maxqual " +  '"' + filt_max_qual + '"') else ""} \
      ~{if defined(filt_min_len) then ("--filt_minlen " +  '"' + filt_min_len + '"') else ""} \
      ~{if defined(filt_min_qual) then ("--filt_minqual " +  '"' + filt_min_qual + '"') else ""} \
      ~{if defined(km_erdf) then ("--kmerdf " +  '"' + km_erdf + '"') else ""} \
      ~{true="--no_transparent" false="" no_transparent} \
      ~{true="--no_timestamp" false="" no_timestamp} \
      ~{if defined(output_base_name) then ("--output_base_name " +  '"' + output_base_name + '"') else ""} \
      ~{if defined(plot_maxlen) then ("--plot_maxlen " +  '"' + plot_maxlen + '"') else ""} \
      ~{if defined(plot_max_qual) then ("--plot_maxqual " +  '"' + plot_max_qual + '"') else ""} \
      ~{if defined(plot_min_len) then ("--plot_minlen " +  '"' + plot_min_len + '"') else ""} \
      ~{if defined(plot_min_qual) then ("--plot_minqual " +  '"' + plot_min_qual + '"') else ""} \
      ~{if defined(length_bin) then ("--lengthbin " +  '"' + length_bin + '"') else ""} \
      ~{if defined(qual_bin) then ("--qualbin " +  '"' + qual_bin + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--add-yaxes" false="" add_y_axes}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    dpi: "Change the dpi from the default 600 if you need it higher"
    fast_q: "The input FASTQ file."
    file_form: "Which output format would you like? Def.=png"
    filt_maxlen: "This sets the max read length filter reads."
    filt_max_qual: "This sets the max mean read quality to filter reads."
    filt_min_len: "This sets the min read length to filter reads."
    filt_min_qual: "This sets the min mean read quality to filter reads."
    km_erdf: "Pass the filename of a data matrix if you would like to plot read length versus number of kmers in that read. The data matrix is a tab-separated text file with columns \"id length numks and kmers\", where: <id> = read id <length> = the length of the read <numks> = the number of canonical kmers in the read <kmers> = a list representation of kmers ie ['GAT', 'GTA']"
    no_transparent: "Specify this option if you don't want a transparent background. Default is on."
    no_timestamp: "Turn off time stamps in the filename output."
    output_base_name: "Specify a base name for the output file(s). The input file base name is the default."
    plot_maxlen: "Sets the maximum viewing area in the length dimension."
    plot_max_qual: "Sets the maximum viewing area in the quality dimension."
    plot_min_len: "Sets the minimum viewing area in the length dimension."
    plot_min_qual: "Sets the minimum viewing area in the quality dimension."
    length_bin: "This sets the bin size to use for length."
    qual_bin: "This sets the bin size to use for quality"
    title: "This sets the title for the whole plot. Use --title \"Crustacean's DNA read quality\" if you need single quote or apostrophe inside title."
    add_y_axes: "Add Y-axes to both marginal histograms."
  }
}