version 1.0

task SamplotPlot {
  input {
    Array[String] titles
    File? reference
    Int? number_stdevs_mean
    Array[String] bams
    File? output_file
    Directory? output_dir
    String? start
    String? end
    String? chrom
    Int? window
    Int? max_depth
    String? sv_type
    File? transcript_file
    File? transcript_filename
    Int? max_coverage_points
    Array[String] annotation_files
    Array[String] annotation_filenames
    String? coverage_track_type
    Boolean? print_args
    String? plot_height
    String? plot_width
    Int? include_m_qual
    String? separate_m_qual
    Boolean? json_only
    Int? start_ci
    Int? end_ci
    Int? long_read
    Boolean? ignore_hp
    Int? min_event_size
    Int? x_axis_label_font_size
    Int? yaxis_label_font_size
    Int? legend_font_size
    Int? annotation_font_size
    Boolean? common_insert_size
    Boolean? hide_annotation_labels
    Boolean? coverage_only
    Int? max_coverage
    Boolean? same_yaxis_scales
    Int? marker_size
    Int? dpi
    Int? zoom
    String? debug
  }
  command <<<
    samplot plot \
      ~{if defined(titles) then ("--titles " +  '"' + titles + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(number_stdevs_mean) then ("--z " +  '"' + number_stdevs_mean + '"') else ""} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(max_depth) then ("--max_depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(sv_type) then ("--sv_type " +  '"' + sv_type + '"') else ""} \
      ~{if defined(transcript_file) then ("--transcript_file " +  '"' + transcript_file + '"') else ""} \
      ~{if defined(transcript_filename) then ("--transcript_filename " +  '"' + transcript_filename + '"') else ""} \
      ~{if defined(max_coverage_points) then ("--max_coverage_points " +  '"' + max_coverage_points + '"') else ""} \
      ~{if defined(annotation_files) then ("--annotation_files " +  '"' + annotation_files + '"') else ""} \
      ~{if defined(annotation_filenames) then ("--annotation_filenames " +  '"' + annotation_filenames + '"') else ""} \
      ~{if defined(coverage_track_type) then ("--coverage_tracktype " +  '"' + coverage_track_type + '"') else ""} \
      ~{if (print_args) then "--print_args" else ""} \
      ~{if defined(plot_height) then ("--plot_height " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_width) then ("--plot_width " +  '"' + plot_width + '"') else ""} \
      ~{if defined(include_m_qual) then ("--include_mqual " +  '"' + include_m_qual + '"') else ""} \
      ~{if defined(separate_m_qual) then ("--separate_mqual " +  '"' + separate_m_qual + '"') else ""} \
      ~{if (json_only) then "--json_only" else ""} \
      ~{if defined(start_ci) then ("--start_ci " +  '"' + start_ci + '"') else ""} \
      ~{if defined(end_ci) then ("--end_ci " +  '"' + end_ci + '"') else ""} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{if (ignore_hp) then "--ignore_hp" else ""} \
      ~{if defined(min_event_size) then ("--min_event_size " +  '"' + min_event_size + '"') else ""} \
      ~{if defined(x_axis_label_font_size) then ("--xaxis_label_fontsize " +  '"' + x_axis_label_font_size + '"') else ""} \
      ~{if defined(yaxis_label_font_size) then ("--yaxis_label_fontsize " +  '"' + yaxis_label_font_size + '"') else ""} \
      ~{if defined(legend_font_size) then ("--legend_fontsize " +  '"' + legend_font_size + '"') else ""} \
      ~{if defined(annotation_font_size) then ("--annotation_fontsize " +  '"' + annotation_font_size + '"') else ""} \
      ~{if (common_insert_size) then "--common_insert_size" else ""} \
      ~{if (hide_annotation_labels) then "--hide_annotation_labels" else ""} \
      ~{if (coverage_only) then "--coverage_only" else ""} \
      ~{if defined(max_coverage) then ("--max_coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if (same_yaxis_scales) then "--same_yaxis_scales" else ""} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(zoom) then ("--zoom " +  '"' + zoom + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samplot:1.1.3--pyh3252c3a_0"
  }
  parameter_meta {
    titles: "Space-delimited list of plot titles. Use quote marks\\nto include spaces (i.e. \\\"plot 1\\\" \\\"plot 2\\\")"
    reference: "Reference file for CRAM, required if CRAM files used"
    number_stdevs_mean: "Number of stdevs from the mean (default 4)"
    bams: "Space-delimited list of BAM/CRAM file names"
    output_file: "Output file name/type. Defaults to\\n{type}_{chrom}_{start}_{end}.png"
    output_dir: "Output directory name. Defaults to working dir.\\nIgnored if --output_file is set"
    start: "Start position of region/variant (add multiple for\\ntranslocation/BND events)"
    end: "End position of region/variant (add multiple for\\ntranslocation/BND events)"
    chrom: "Chromosome (add multiple for translocation/BND events)"
    window: "Window size (count of bases to include in view),\\ndefault(0.5 * len)"
    max_depth: "Max number of normal pairs to plot"
    sv_type: "SV type. If omitted, plot is created without variant\\nbar"
    transcript_file: "GFF3 of transcripts"
    transcript_filename: "Name for transcript track"
    max_coverage_points: "number of points to plot in coverage axis (downsampled\\nfrom region size for speed)"
    annotation_files: "Space-delimited list of bed.gz tabixed files of\\nannotations (such as repeats, mappability, etc.)"
    annotation_filenames: "Space-delimited list of names for the tracks in\\n--annotation_files"
    coverage_track_type: "type of track to use for low MAPQ coverage plot."
    print_args: "Print commandline arguments"
    plot_height: "Plot height"
    plot_width: "Plot width"
    include_m_qual: "Min mapping quality of reads to be included in plot\\n(default 1)"
    separate_m_qual: "coverage from reads with MAPQ <= separate_mqual\\nplotted in lighter grey. To disable, pass in negative\\nvalue"
    json_only: "Create only the json file, not the image plot"
    start_ci: "confidence intervals of SV first breakpoint (distance\\nfrom the breakpoint). Must be a comma-separated pair\\nof ints (i.e. 20,40)"
    end_ci: "confidence intervals of SV end breakpoint (distance\\nfrom the breakpoint). Must be a comma-separated pair\\nof ints (i.e. 20,40)"
    long_read: "Min length of a read to be treated as a long-read\\n(default 1000)"
    ignore_hp: "Choose to ignore HP tag in alignment files"
    min_event_size: "Min size of an event in long-read CIGAR to include\\n(default 20)"
    x_axis_label_font_size: "Font size for X-axis labels (default 6)"
    yaxis_label_font_size: "Font size for Y-axis labels (default 6)"
    legend_font_size: "Font size for legend labels (default 6)"
    annotation_font_size: "Font size for annotation labels (default 6)"
    common_insert_size: "Set common insert size for all plots"
    hide_annotation_labels: "Hide the label (fourth column text) from annotation\\nfiles, useful for regions with many annotations"
    coverage_only: "Hide all reads and show only coverage"
    max_coverage: "apply a maximum coverage cutoff. Unlimited by default"
    same_yaxis_scales: "Set the scales of the Y axes to the max of all"
    marker_size: "Size of marks on pairs and splits (default 3)"
    dpi: "Dots per inches (pixel count, default 300)"
    zoom: "Only show +- zoom amount around breakpoints, much\\nfaster for large regions. Ignored if region smaller\\nthan --zoom (default 500000)"
    debug: "Print debug statements"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    Directory out_output_dir = "${in_output_dir}"
  }
}