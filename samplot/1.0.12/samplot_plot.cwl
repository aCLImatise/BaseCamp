class: CommandLineTool
id: samplot_plot.cwl
inputs:
- id: marker_size
  doc: Size of marks on pairs and splits (default 3)
  type: string
  inputBinding:
    prefix: --marker_size
- id: titles
  doc: Space-delimited list of plot titles. Use quote marks to include spaces (i.e.
    "plot 1" "plot 2")
  type: string[]
  inputBinding:
    prefix: --titles
- id: reference
  doc: Reference file for CRAM, required if CRAM files used
  type: string
  inputBinding:
    prefix: --reference
- id: z
  doc: Number of stdevs from the mean (default 4)
  type: string
  inputBinding:
    prefix: --z
- id: bams
  doc: Space-delimited list of BAM/CRAM file names
  type: string[]
  inputBinding:
    prefix: --bams
- id: output_file
  doc: Output file name
  type: string
  inputBinding:
    prefix: --output_file
- id: start
  doc: Start position of region/variant
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: End position of region/variant
  type: string
  inputBinding:
    prefix: --end
- id: chrom
  doc: Chromosome
  type: string
  inputBinding:
    prefix: --chrom
- id: window
  doc: Window size (count of bases to include in view), default(0.5 * len)
  type: string
  inputBinding:
    prefix: --window
- id: max_depth
  doc: Max number of normal pairs to plot
  type: long
  inputBinding:
    prefix: --max_depth
- id: min_q
  doc: coverage from reads with MAPQ <= minq plotted in lighter grey. To disable,
    pass in negative value
  type: long
  inputBinding:
    prefix: --minq
- id: sv_type
  doc: SV type. If omitted, plot is created without variant bar
  type: string
  inputBinding:
    prefix: --sv_type
- id: transcript_file
  doc: GFF of transcripts
  type: string
  inputBinding:
    prefix: --transcript_file
- id: annotation_files
  doc: Space-delimited list of bed.gz tabixed files of annotations (such as repeats,
    mappability, etc.)
  type: string[]
  inputBinding:
    prefix: --annotation_files
- id: coverage_track_type
  doc: type of track to use for low MAPQ coverage plot.
  type: string
  inputBinding:
    prefix: --coverage_tracktype
- id: print_args
  doc: Print commandline arguments
  type: boolean
  inputBinding:
    prefix: --print_args
- id: plot_height
  doc: Plot height
  type: string
  inputBinding:
    prefix: --plot_height
- id: plot_width
  doc: Plot width
  type: string
  inputBinding:
    prefix: --plot_width
- id: min_m_qual
  doc: Min mapping quality of reads to be included in plot
  type: long
  inputBinding:
    prefix: --min_mqual
- id: json_only
  doc: Create only the json file, not the image plot
  type: boolean
  inputBinding:
    prefix: --json_only
- id: start_ci
  doc: confidence intervals of SV first breakpoint (distance from the breakpoint).
    Must be a comma-separated pair of ints (i.e. 20,40)
  type: string
  inputBinding:
    prefix: --start_ci
- id: end_ci
  doc: confidence intervals of SV end breakpoint (distance from the breakpoint). Must
    be a comma-separated pair of ints (i.e. 20,40)
  type: string
  inputBinding:
    prefix: --end_ci
- id: long_read
  doc: Min length of a read to be treated as a long-read (default 1000)
  type: string
  inputBinding:
    prefix: --long_read
- id: min_event_size
  doc: Min size of an event in long-read CIGAR to include (default 100)
  type: long
  inputBinding:
    prefix: --min_event_size
- id: x_axis_label_font_size
  doc: Font size for X-axis labels (default 6)
  type: string
  inputBinding:
    prefix: --xaxis_label_fontsize
- id: yaxis_label_font_size
  doc: Font size for Y-axis labels (default 6)
  type: string
  inputBinding:
    prefix: --yaxis_label_fontsize
- id: legend_font_size
  doc: Font size for legend labels (default 6)
  type: string
  inputBinding:
    prefix: --legend_fontsize
- id: annotation_font_size
  doc: Font size for annotation labels (default 6)
  type: string
  inputBinding:
    prefix: --annotation_fontsize
- id: common_insert_size
  doc: Set common insert size for all plots
  type: boolean
  inputBinding:
    prefix: --common_insert_size
- id: hide_annotation_labels
  doc: Hide the label (fourth column text) from annotation files, useful for region
    with many annotations
  type: boolean
  inputBinding:
    prefix: --hide_annotation_labels
- id: coverage_only
  doc: Hide all reads and show only coverage
  type: boolean
  inputBinding:
    prefix: --coverage_only
- id: same_yaxis_scales
  doc: Set the scales of the Y axes to the max of all
  type: boolean
  inputBinding:
    prefix: --same_yaxis_scales
- id: zoom
  doc: Only show +- zoom amount around breakpoints
  type: string
  inputBinding:
    prefix: --zoom
- id: debug
  doc: Print debug statements
  type: string
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- samplot
- plot
