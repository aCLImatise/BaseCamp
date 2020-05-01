#!/usr/bin/env cwl-runner

baseCommand:
- plot_count_stats
class: CommandLineTool
cwlVersion: v1.0
id: plot_count_stats
inputs:
- doc: Full path to file containing table output by CHROM_STATS
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: "Full path to file containing metadata table. This file should have the following\
    \ columns separated by tabs: Sample NameOfVariable1 NameOfVariable2. NameOfVariable1\
    \ and NameofVariable2 should be the names of whatever you're interested in plotting\
    \ (e.g., Sex). NameOfVariable2 is optional. This script handles a max of two variables."
  id: meta
  inputBinding:
    prefix: --meta
  type: string
- doc: "'Prefix' of output files. This includes full path to desired file and desired\
    \ file name before suffix (suffix will be .pdf)."
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: Text to remove from end of sample names in input file. Default is to remove
    nothing. Note that the sample names in the input file have to match the names
    in the meta file AFTER they undergo this step.
  id: exclude_suffix
  inputBinding:
    prefix: --exclude_suffix
  type: string
- doc: 'Chromosome to use a numerator on X-axis. For example, if one was comparing
    chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr
    chrX --second_chr chrY --const_chr chr19.'
  id: first_chr
  inputBinding:
    prefix: --first_chr
  type: string
- doc: 'Chromosome to use a numerator on Y-axis. For example, if one was comparing
    chrX and chrY, and using chr19 to normalize, recommended values would be: --first_chr
    chrX --second_chr chrY --const_chr chr19.'
  id: second_chr
  inputBinding:
    prefix: --second_chr
  type: string
- doc: 'Chromosome to use denominator on both the X- and Y-axis. For example, if one
    was comparing chrX and chrY, and using chr19 to normalize, recommended values
    would be: --first_chr chrX --second_chr chrY --const_chr chr19.'
  id: const_chr
  inputBinding:
    prefix: --const_chr
  type: string
- doc: Way of designating variable 1 values in plot. Choices are 'color', 'shape',
    or 'size'. Must be used in conjunction with --var1_marker_vals. Default is 'color'.
  id: var1_marker
  inputBinding:
    prefix: --var1_marker
  type: string
- doc: Marker values to use for variable 1 values. If --var1_marker is 'color', then
    --var1_marker_vals should be a space-separated list of Matplotlib colors (e.g.,
    'red blue green'). If --var1_marker is 'shape' then --var1_marker_vals should
    be a space-separated list of Matplotlib scatter markers (e.g., 'x o D' for x,
    cicle, and Diamond). Finally, if --var1_marker is 'size', then --var1_marker_vals
    should be a space- separated list of Matplotlib marker sizes in units of points^2
    (e.g., '5 10 15'). Default is 'red blue'.
  id: var1_marker_vals
  inputBinding:
    prefix: --var1_marker_vals
  type:
    items: string
    type: array
- doc: Way of designating variable 2 values in plot. Choices are 'color', 'shape',
    or 'size'. Must be used in conjunction with --var2_marker_vals. Default is 'none',
    which will only process --var1_marker.
  id: var2_marker
  inputBinding:
    prefix: --var2_marker
  type: string
- doc: "[VAR2_MARKER_VALS [VAR2_MARKER_VALS ...]] Marker values to use for variable\
    \ 2 values. If --var2_marker is 'color', then --var2_marker_vals should be a space-separated\
    \ list of Matplotlib colors (e.g., 'red blue green'). If --var2_marker is 'shape'\
    \ then --var2_marker_vals should be a space-separated list of Matplotlib scatter\
    \ markers (e.g., 'x o D' for x, cicle, and Diamond). Finally, if --var2_marker\
    \ is 'size', then --var2_marker_vals should be a space- separated list of Matplotlib\
    \ marker sizes in units of points^2 (e.g., '5 10 15'). Default is 'red blue'."
  id: var2_marker_vals
  inputBinding:
    prefix: --var2_marker_vals
  type: boolean
- doc: If 'size' is not selected for --var1_marker or --var2_marker, use this size
    for markers. Default is 100.
  id: marker_size
  inputBinding:
    prefix: --marker_size
  type: string
- doc: If 'color' is not selected for --var1_marker or --var2_marker, use this color
    for markers. Default is 'black'.
  id: marker_color
  inputBinding:
    prefix: --marker_color
  type: string
- doc: If 'shape' is not selected for --var1_marker or --var2_marker, use this shape
    for markers (see matplotlib for possible shapes). Default is 'o' for circles.
  id: marker_shape
  inputBinding:
    prefix: --marker_shape
  type: string
- doc: Marker transparency ranging from 0.0 to 1.0 (1.0 being nontransparent). Default
    is 0.5.
  id: marker_alpha
  inputBinding:
    prefix: --marker_alpha
  type: string
- doc: Use this value to scale maker size in legend, if desired. Default is 1.0, or
    no scaling.
  id: legend_marker_scale
  inputBinding:
    prefix: --legend_marker_scale
  type: string
- doc: X axis title. Default is '<name of first chrom> / <name of const chrom> ratio'.
    E.g., 'chrX / chr19 ratio'
  id: x_title
  inputBinding:
    prefix: --x_title
  type: string
- doc: Y axis title. Default is '<name of second chrom> / <name of const chrom> ratio'.
    E.g., 'chrY / chr19 ratio'
  id: y_title
  inputBinding:
    prefix: --y_title
  type: string
