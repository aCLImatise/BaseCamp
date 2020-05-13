class: CommandLineTool
id: plot_count_stats.cwl
inputs:
- id: input
  doc: Full path to file containing table output by CHROM_STATS
  type: string
  inputBinding:
    prefix: --input
- id: meta
  doc: "Full path to file containing metadata table. This file should have the following\
    \ columns separated by tabs: Sample NameOfVariable1 NameOfVariable2. NameOfVariable1\
    \ and NameofVariable2 should be the names of whatever you're interested in plotting\
    \ (e.g., Sex). NameOfVariable2 is optional. This script handles a max of two variables."
  type: string
  inputBinding:
    prefix: --meta
- id: output_prefix
  doc: "'Prefix' of output files. This includes full path to desired file and desired\
    \ file name before suffix (suffix will be .pdf)."
  type: string
  inputBinding:
    prefix: --output_prefix
- id: exclude_suffix
  doc: Text to remove from end of sample names in input file. Default is to remove
    nothing. Note that the sample names in the input file have to match the names
    in the meta file AFTER they undergo this step.
  type: string
  inputBinding:
    prefix: --exclude_suffix
- id: first_chr
  doc: 'Chromosome to use a numerator on X-axis. For example, if one was comparing
    chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr
    chrX --second_chr chrY --const_chr chr19.'
  type: string
  inputBinding:
    prefix: --first_chr
- id: second_chr
  doc: 'Chromosome to use a numerator on Y-axis. For example, if one was comparing
    chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr
    chrX --second_chr chrY --const_chr chr19.'
  type: string
  inputBinding:
    prefix: --second_chr
- id: const_chr
  doc: 'Chromosome to use denominator on both the X- and Y-axis. For example, if one
    was comparing chrX and chrY, and using chr19 to normalize, recommended values
    would be: --first_chr chrX --second_chr chrY --const_chr chr19.'
  type: string
  inputBinding:
    prefix: --const_chr
- id: var1_marker
  doc: Way of designating variable 1 values in plot. Choices are 'color', 'shape',
    or 'size'. Must be used in conjunction with --var1_marker_vals. Default is 'color'.
  type: string
  inputBinding:
    prefix: --var1_marker
- id: var1_marker_vals
  doc: Marker values to use for variable 1 values. If --var1_marker is 'color', then
    --var1_marker_vals should be a space-separated list of Matplotlib colors (e.g.,
    'red blue green'). If --var1_marker is 'shape' then --var1_marker_vals should
    be a space-separated list of Matplotlib scatter markers (e.g., 'x o D' for x,
    cicle, and Diamond). Finally, if --var1_marker is 'size', then --var1_marker_vals
    should be a space- separated list of Matplotlib marker sizes in units of points^2
    (e.g., '5 10 15'). Default is 'red blue'.
  type: string[]
  inputBinding:
    prefix: --var1_marker_vals
- id: var2_marker
  doc: Way of designating variable 2 values in plot. Choices are 'color', 'shape',
    or 'size'. Must be used in conjunction with --var2_marker_vals. Default is 'none',
    which will only process --var1_marker.
  type: string
  inputBinding:
    prefix: --var2_marker
- id: var2_marker_vals
  doc: "[VAR2_MARKER_VALS [VAR2_MARKER_VALS ...]] Marker values to use for variable\
    \ 2 values. If --var2_marker is 'color', then --var2_marker_vals should be a space-separated\
    \ list of Matplotlib colors (e.g., 'red blue green'). If --var2_marker is 'shape'\
    \ then --var2_marker_vals should be a space-separated list of Matplotlib scatter\
    \ markers (e.g., 'x o D' for x, cicle, and Diamond). Finally, if --var2_marker\
    \ is 'size', then --var2_marker_vals should be a space- separated list of Matplotlib\
    \ marker sizes in units of points^2 (e.g., '5 10 15'). Default is 'red blue'."
  type: boolean
  inputBinding:
    prefix: --var2_marker_vals
- id: marker_size
  doc: If 'size' is not selected for --var1_marker or --var2_marker, use this size
    for markers. Default is 100.
  type: string
  inputBinding:
    prefix: --marker_size
- id: marker_color
  doc: If 'color' is not selected for --var1_marker or --var2_marker, use this color
    for markers. Default is 'black'.
  type: string
  inputBinding:
    prefix: --marker_color
- id: marker_shape
  doc: If 'shape' is not selected for --var1_marker or --var2_marker, use this shape
    for markers (see matplotlib for possible shapes). Default is 'o' for circles.
  type: string
  inputBinding:
    prefix: --marker_shape
- id: marker_alpha
  doc: Marker transparency ranging from 0.0 to 1.0 (1.0 being nontransparent). Default
    is 0.5.
  type: string
  inputBinding:
    prefix: --marker_alpha
- id: legend_marker_scale
  doc: Use this value to scale maker size in legend, if desired. Default is 1.0, or
    no scaling.
  type: string
  inputBinding:
    prefix: --legend_marker_scale
- id: x_title
  doc: X axis title. Default is '<name of first chrom> / <name of const chrom> ratio'.
    E.g., 'chrX / chr19 ratio'
  type: string
  inputBinding:
    prefix: --x_title
- id: y_title
  doc: Y axis title. Default is '<name of second chrom> / <name of const chrom> ratio'.
    E.g., 'chrY / chr19 ratio'
  type: string
  inputBinding:
    prefix: --y_title
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_count_stats
