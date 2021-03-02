version 1.0

task NanoPlot {
  input {
    Int? threads
    Boolean? verbose
    Boolean? store
    Boolean? raw
    Boolean? huge
    Directory? outdir
    String? prefix
    Int? maxlength
    Int? minlength
    Boolean? drop_outliers
    String? down_sample
    Boolean? log_length
    Boolean? percent_qual
    Boolean? a_length
    String? min_qual
    String? runtime_until
    String? read_type
    Boolean? barcoded
    Boolean? no_supplementary
    String? color
    String? colormap
    String? format
    Boolean? plots
    Boolean? list_colors
    Boolean? list_colormaps
    Boolean? no_n_five_zero
    Boolean? n_five_zero
    String? title
    String? font_scale
    String? dpi
    Boolean? hide_stats
    Array[File] fast_q
    Array[File] fast_a
    Array[File] fast_q_rich
    Array[File] fast_q_minimal
    Array[File] summary
    Array[File] bam
    Array[File] ub_am
    Array[File] cram
    File? pickle
    Boolean? v
  }
  command <<<
    NanoPlot \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (store) then "--store" else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if (huge) then "--huge" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if (drop_outliers) then "--drop_outliers" else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if (log_length) then "--loglength" else ""} \
      ~{if (percent_qual) then "--percentqual" else ""} \
      ~{if (a_length) then "--alength" else ""} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(runtime_until) then ("--runtime_until " +  '"' + runtime_until + '"') else ""} \
      ~{if defined(read_type) then ("--readtype " +  '"' + read_type + '"') else ""} \
      ~{if (barcoded) then "--barcoded" else ""} \
      ~{if (no_supplementary) then "--no_supplementary" else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""} \
      ~{if defined(colormap) then ("--colormap " +  '"' + colormap + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (plots) then "--plots" else ""} \
      ~{if (list_colors) then "--listcolors" else ""} \
      ~{if (list_colormaps) then "--listcolormaps" else ""} \
      ~{if (no_n_five_zero) then "--no-N50" else ""} \
      ~{if (n_five_zero) then "--N50" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(font_scale) then ("--font_scale " +  '"' + font_scale + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (hide_stats) then "--hide_stats" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(fast_q_rich) then ("--fastq_rich " +  '"' + fast_q_rich + '"') else ""} \
      ~{if defined(fast_q_minimal) then ("--fastq_minimal " +  '"' + fast_q_minimal + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ub_am) then ("--ubam " +  '"' + ub_am + '"') else ""} \
      ~{if defined(cram) then ("--cram " +  '"' + cram + '"') else ""} \
      ~{if defined(pickle) then ("--pickle " +  '"' + pickle + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Set the allowed number of threads to be used by the script"
    verbose: "Write log messages also to terminal."
    store: "Store the extracted data in a pickle file for future plotting."
    raw: "Store the extracted data in tab separated file."
    huge: "Input data is one very large file."
    outdir: "Specify directory in which output has to be created."
    prefix: "Specify an optional prefix to be used for the output files."
    maxlength: "Hide reads longer than length specified."
    minlength: "Hide reads shorter than length specified."
    drop_outliers: "Drop outlier reads with extreme long length."
    down_sample: "Reduce dataset to N reads by random sampling."
    log_length: "Additionally show logarithmic scaling of lengths in plots."
    percent_qual: "Use qualities as theoretical percent identities."
    a_length: "Use aligned read lengths rather than sequenced length (bam mode)"
    min_qual: "Drop reads with an average quality lower than specified."
    runtime_until: "Only take the N first hours of a run"
    read_type: "Which read type to extract information about from summary. Options are 1D, 2D,\\n1D2"
    barcoded: "Use if you want to split the summary file by barcode"
    no_supplementary: "Use if you want to remove supplementary alignments"
    color: "Specify a valid matplotlib color for the plots"
    colormap: "Specify a valid matplotlib colormap for the heatmap"
    format: "Specify the output format of the plots."
    plots: "[{kde,hex,dot,pauvre} [{kde,hex,dot,pauvre} ...]]\\nSpecify which bivariate plots have to be made."
    list_colors: "List the colors which are available for plotting and exit."
    list_colormaps: "List the colors which are available for plotting and exit."
    no_n_five_zero: "Hide the N50 mark in the read length histogram"
    n_five_zero: "Show the N50 mark in the read length histogram"
    title: "Add a title to all plots, requires quoting if using spaces"
    font_scale: "Scale the font of the plots by a factor"
    dpi: "Set the dpi for saving images"
    hide_stats: "Not adding Pearson R stats in some bivariate plots"
    fast_q: "Data is in one or more default fastq file(s)."
    fast_a: "Data is in one or more fasta file(s)."
    fast_q_rich: "Data is in one or more fastq file(s) generated by albacore, MinKNOW or guppy\\nwith additional information concerning channel and time."
    fast_q_minimal: "Data is in one or more fastq file(s) generated by albacore, MinKNOW or guppy\\nwith additional information concerning channel and time. Is extracted swiftly\\nwithout elaborate checks."
    summary: "Data is in one or more summary file(s) generated by albacore or guppy."
    bam: "Data is in one or more sorted bam file(s)."
    ub_am: "Data is in one or more unmapped bam file(s)."
    cram: "Data is in one or more sorted cram file(s)."
    pickle: "Data is a pickle file stored earlier."
    v: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}