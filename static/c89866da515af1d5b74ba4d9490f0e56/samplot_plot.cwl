class: CommandLineTool
id: samplot_plot.cwl
inputs:
- id: in_titles
  doc: "Space-delimited list of plot titles. Use quote marks\nto include spaces (i.e.\
    \ \"plot 1\" \"plot 2\")"
  type: string[]
  inputBinding:
    prefix: --titles
- id: in_reference
  doc: Reference file for CRAM, required if CRAM files used
  type: File?
  inputBinding:
    prefix: --reference
- id: in_number_stdevs_mean
  doc: Number of stdevs from the mean (default 4)
  type: long?
  inputBinding:
    prefix: --z
- id: in_bams
  doc: Space-delimited list of BAM/CRAM file names
  type: string[]
  inputBinding:
    prefix: --bams
- id: in_output_file
  doc: "Output file name/type. Defaults to\n{type}_{chrom}_{start}_{end}.png"
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_output_dir
  doc: "Output directory name. Defaults to working dir.\nIgnored if --output_file\
    \ is set"
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_start
  doc: "Start position of region/variant (add multiple for\ntranslocation/BND events)"
  type: string?
  inputBinding:
    prefix: --start
- id: in_end
  doc: "End position of region/variant (add multiple for\ntranslocation/BND events)"
  type: string?
  inputBinding:
    prefix: --end
- id: in_chrom
  doc: Chromosome (add multiple for translocation/BND events)
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_window
  doc: "Window size (count of bases to include in view),\ndefault(0.5 * len)"
  type: long?
  inputBinding:
    prefix: --window
- id: in_max_depth
  doc: Max number of normal pairs to plot
  type: long?
  inputBinding:
    prefix: --max_depth
- id: in_sv_type
  doc: "SV type. If omitted, plot is created without variant\nbar"
  type: string?
  inputBinding:
    prefix: --sv_type
- id: in_transcript_file
  doc: GFF3 of transcripts
  type: File?
  inputBinding:
    prefix: --transcript_file
- id: in_transcript_filename
  doc: Name for transcript track
  type: File?
  inputBinding:
    prefix: --transcript_filename
- id: in_max_coverage_points
  doc: "number of points to plot in coverage axis (downsampled\nfrom region size for\
    \ speed)"
  type: long?
  inputBinding:
    prefix: --max_coverage_points
- id: in_annotation_files
  doc: "Space-delimited list of bed.gz tabixed files of\nannotations (such as repeats,\
    \ mappability, etc.)"
  type: string[]
  inputBinding:
    prefix: --annotation_files
- id: in_annotation_filenames
  doc: "Space-delimited list of names for the tracks in\n--annotation_files"
  type: string[]
  inputBinding:
    prefix: --annotation_filenames
- id: in_coverage_track_type
  doc: type of track to use for low MAPQ coverage plot.
  type: string?
  inputBinding:
    prefix: --coverage_tracktype
- id: in_print_args
  doc: Print commandline arguments
  type: boolean?
  inputBinding:
    prefix: --print_args
- id: in_plot_height
  doc: Plot height
  type: string?
  inputBinding:
    prefix: --plot_height
- id: in_plot_width
  doc: Plot width
  type: string?
  inputBinding:
    prefix: --plot_width
- id: in_include_m_qual
  doc: "Min mapping quality of reads to be included in plot\n(default 1)"
  type: long?
  inputBinding:
    prefix: --include_mqual
- id: in_separate_m_qual
  doc: "coverage from reads with MAPQ <= separate_mqual\nplotted in lighter grey.\
    \ To disable, pass in negative\nvalue"
  type: string?
  inputBinding:
    prefix: --separate_mqual
- id: in_json_only
  doc: Create only the json file, not the image plot
  type: boolean?
  inputBinding:
    prefix: --json_only
- id: in_start_ci
  doc: "confidence intervals of SV first breakpoint (distance\nfrom the breakpoint).\
    \ Must be a comma-separated pair\nof ints (i.e. 20,40)"
  type: long?
  inputBinding:
    prefix: --start_ci
- id: in_end_ci
  doc: "confidence intervals of SV end breakpoint (distance\nfrom the breakpoint).\
    \ Must be a comma-separated pair\nof ints (i.e. 20,40)"
  type: long?
  inputBinding:
    prefix: --end_ci
- id: in_long_read
  doc: "Min length of a read to be treated as a long-read\n(default 1000)"
  type: long?
  inputBinding:
    prefix: --long_read
- id: in_ignore_hp
  doc: Choose to ignore HP tag in alignment files
  type: boolean?
  inputBinding:
    prefix: --ignore_hp
- id: in_min_event_size
  doc: "Min size of an event in long-read CIGAR to include\n(default 20)"
  type: long?
  inputBinding:
    prefix: --min_event_size
- id: in_x_axis_label_font_size
  doc: Font size for X-axis labels (default 6)
  type: long?
  inputBinding:
    prefix: --xaxis_label_fontsize
- id: in_yaxis_label_font_size
  doc: Font size for Y-axis labels (default 6)
  type: long?
  inputBinding:
    prefix: --yaxis_label_fontsize
- id: in_legend_font_size
  doc: Font size for legend labels (default 6)
  type: long?
  inputBinding:
    prefix: --legend_fontsize
- id: in_annotation_font_size
  doc: Font size for annotation labels (default 6)
  type: long?
  inputBinding:
    prefix: --annotation_fontsize
- id: in_common_insert_size
  doc: Set common insert size for all plots
  type: boolean?
  inputBinding:
    prefix: --common_insert_size
- id: in_hide_annotation_labels
  doc: "Hide the label (fourth column text) from annotation\nfiles, useful for regions\
    \ with many annotations"
  type: boolean?
  inputBinding:
    prefix: --hide_annotation_labels
- id: in_coverage_only
  doc: Hide all reads and show only coverage
  type: boolean?
  inputBinding:
    prefix: --coverage_only
- id: in_max_coverage
  doc: apply a maximum coverage cutoff. Unlimited by default
  type: long?
  inputBinding:
    prefix: --max_coverage
- id: in_same_yaxis_scales
  doc: Set the scales of the Y axes to the max of all
  type: boolean?
  inputBinding:
    prefix: --same_yaxis_scales
- id: in_marker_size
  doc: Size of marks on pairs and splits (default 3)
  type: long?
  inputBinding:
    prefix: --marker_size
- id: in_dpi
  doc: Dots per inches (pixel count, default 300)
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_zoom
  doc: "Only show +- zoom amount around breakpoints, much\nfaster for large regions.\
    \ Ignored if region smaller\nthan --zoom (default 500000)"
  type: long?
  inputBinding:
    prefix: --zoom
- id: in_debug
  doc: Print debug statements
  type: string?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output file name/type. Defaults to\n{type}_{chrom}_{start}_{end}.png"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_dir
  doc: "Output directory name. Defaults to working dir.\nIgnored if --output_file\
    \ is set"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samplot:1.1.6--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- samplot
- plot
