version 1.0

task SamplotPlot {
  input {
    Array[String] titles
    String? reference
    String? number_stdevs_mean
    Array[String] bams
    String? output_file
    String? output_dir
    String? start
    String? end
    String? chrom
    String? window
    Int? max_depth
    String? sv_type
    String? transcript_file
    String? transcript_filename
    Array[String] annotation_files
    Array[String] annotation_filenames
    String? coverage_track_type
    Boolean? print_args
    String? plot_height
    String? plot_width
    String? include_m_qual
    String? separate_m_qual
    Boolean? json_only
    String? start_ci
    String? end_ci
    String? long_read
    Boolean? ignore_hp
    Int? min_event_size
    String? x_axis_label_font_size
    String? yaxis_label_font_size
    String? legend_font_size
    String? annotation_font_size
    Boolean? common_insert_size
    Boolean? hide_annotation_labels
    Boolean? coverage_only
    Boolean? same_yaxis_scales
    String? marker_size
    String? dpi
    String? zoom
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
      ~{if defined(annotation_files) then ("--annotation_files " +  '"' + annotation_files + '"') else ""} \
      ~{if defined(annotation_filenames) then ("--annotation_filenames " +  '"' + annotation_filenames + '"') else ""} \
      ~{if defined(coverage_track_type) then ("--coverage_tracktype " +  '"' + coverage_track_type + '"') else ""} \
      ~{true="--print_args" false="" print_args} \
      ~{if defined(plot_height) then ("--plot_height " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_width) then ("--plot_width " +  '"' + plot_width + '"') else ""} \
      ~{if defined(include_m_qual) then ("--include_mqual " +  '"' + include_m_qual + '"') else ""} \
      ~{if defined(separate_m_qual) then ("--separate_mqual " +  '"' + separate_m_qual + '"') else ""} \
      ~{true="--json_only" false="" json_only} \
      ~{if defined(start_ci) then ("--start_ci " +  '"' + start_ci + '"') else ""} \
      ~{if defined(end_ci) then ("--end_ci " +  '"' + end_ci + '"') else ""} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{true="--ignore_hp" false="" ignore_hp} \
      ~{if defined(min_event_size) then ("--min_event_size " +  '"' + min_event_size + '"') else ""} \
      ~{if defined(x_axis_label_font_size) then ("--xaxis_label_fontsize " +  '"' + x_axis_label_font_size + '"') else ""} \
      ~{if defined(yaxis_label_font_size) then ("--yaxis_label_fontsize " +  '"' + yaxis_label_font_size + '"') else ""} \
      ~{if defined(legend_font_size) then ("--legend_fontsize " +  '"' + legend_font_size + '"') else ""} \
      ~{if defined(annotation_font_size) then ("--annotation_fontsize " +  '"' + annotation_font_size + '"') else ""} \
      ~{true="--common_insert_size" false="" common_insert_size} \
      ~{true="--hide_annotation_labels" false="" hide_annotation_labels} \
      ~{true="--coverage_only" false="" coverage_only} \
      ~{true="--same_yaxis_scales" false="" same_yaxis_scales} \
      ~{if defined(marker_size) then ("--marker_size " +  '"' + marker_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(zoom) then ("--zoom " +  '"' + zoom + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  parameter_meta {
    titles: "Space-delimited list of plot titles. Use quote marks to include spaces (i.e. \"plot 1\" \"plot 2\")"
    reference: "Reference file for CRAM, required if CRAM files used"
    number_stdevs_mean: "Number of stdevs from the mean (default 4)"
    bams: "Space-delimited list of BAM/CRAM file names"
    output_file: "Output file name/type. Defaults to {type}_{chrom}_{start}_{end}.png"
    output_dir: "Output directory name. Defaults to working dir. Ignored if --output_file is set"
    start: "Start position of region/variant"
    end: "End position of region/variant"
    chrom: "Chromosome"
    window: "Window size (count of bases to include in view), default(0.5 * len)"
    max_depth: "Max number of normal pairs to plot"
    sv_type: "SV type. If omitted, plot is created without variant bar"
    transcript_file: "GFF3 of transcripts"
    transcript_filename: "Name for transcript track"
    annotation_files: "Space-delimited list of bed.gz tabixed files of annotations (such as repeats, mappability, etc.)"
    annotation_filenames: "Space-delimited list of names for the tracks in --annotation_files"
    coverage_track_type: "type of track to use for low MAPQ coverage plot."
    print_args: "Print commandline arguments"
    plot_height: "Plot height"
    plot_width: "Plot width"
    include_m_qual: "Min mapping quality of reads to be included in plot"
    separate_m_qual: "coverage from reads with MAPQ <= separate_mqual plotted in lighter grey. To disable, pass in negative value"
    json_only: "Create only the json file, not the image plot"
    start_ci: "confidence intervals of SV first breakpoint (distance from the breakpoint). Must be a comma-separated pair of ints (i.e. 20,40)"
    end_ci: "confidence intervals of SV end breakpoint (distance from the breakpoint). Must be a comma-separated pair of ints (i.e. 20,40)"
    long_read: "Min length of a read to be treated as a long-read (default 1000)"
    ignore_hp: "Choose to ignore HP tag in alignment files"
    min_event_size: "Min size of an event in long-read CIGAR to include (default 20)"
    x_axis_label_font_size: "Font size for X-axis labels (default 6)"
    yaxis_label_font_size: "Font size for Y-axis labels (default 6)"
    legend_font_size: "Font size for legend labels (default 6)"
    annotation_font_size: "Font size for annotation labels (default 6)"
    common_insert_size: "Set common insert size for all plots"
    hide_annotation_labels: "Hide the label (fourth column text) from annotation files, useful for regions with many annotations"
    coverage_only: "Hide all reads and show only coverage"
    same_yaxis_scales: "Set the scales of the Y axes to the max of all"
    marker_size: "Size of marks on pairs and splits (default 3)"
    dpi: "Dots per inches (pixel count, default 300)"
    zoom: "Only show +- zoom amount around breakpoints, much faster for large regions. Ignored if region smaller than --zoom (default 500000)"
    debug: "Print debug statements"
  }
}