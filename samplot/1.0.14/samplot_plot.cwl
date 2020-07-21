class: CommandLineTool
id: ../../../samplot_plot.cwl
inputs:
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
- id: number_stdevs_mean
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
  doc: Output file name/type. Defaults to {type}_{chrom}_{start}_{end}.png
  type: string
  inputBinding:
    prefix: --output_file
- id: output_dir
  doc: Output directory name. Defaults to working dir. Ignored if --output_file is
    set
  type: string
  inputBinding:
    prefix: --output_dir
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
- id: sv_type
  doc: SV type. If omitted, plot is created without variant bar
  type: string
  inputBinding:
    prefix: --sv_type
- id: transcript_file
  doc: GFF3 of transcripts
  type: string
  inputBinding:
    prefix: --transcript_file
- id: transcript_filename
  doc: Name for transcript track
  type: string
  inputBinding:
    prefix: --transcript_filename
- id: annotation_files
  doc: Space-delimited list of bed.gz tabixed files of annotations (such as repeats,
    mappability, etc.)
  type: string[]
  inputBinding:
    prefix: --annotation_files
- id: annotation_filenames
  doc: Space-delimited list of names for the tracks in --annotation_files
  type: string[]
  inputBinding:
    prefix: --annotation_filenames
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
- id: include_m_qual
  doc: Min mapping quality of reads to be included in plot
  type: string
  inputBinding:
    prefix: --include_mqual
- id: separate_m_qual
  doc: coverage from reads with MAPQ <= separate_mqual plotted in lighter grey. To
    disable, pass in negative value
  type: string
  inputBinding:
    prefix: --separate_mqual
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
- id: ignore_hp
  doc: Choose to ignore HP tag in alignment files
  type: boolean
  inputBinding:
    prefix: --ignore_hp
- id: min_event_size
  doc: Min size of an event in long-read CIGAR to include (default 20)
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
  doc: Hide the label (fourth column text) from annotation files, useful for regions
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
- id: marker_size
  doc: Size of marks on pairs and splits (default 3)
  type: string
  inputBinding:
    prefix: --marker_size
- id: dpi
  doc: Dots per inches (pixel count, default 300)
  type: string
  inputBinding:
    prefix: --dpi
- id: zoom
  doc: Only show +- zoom amount around breakpoints, much faster for large regions.
    Ignored if region smaller than --zoom (default 500000)
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
