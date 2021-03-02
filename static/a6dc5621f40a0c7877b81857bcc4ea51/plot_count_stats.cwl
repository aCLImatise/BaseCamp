class: CommandLineTool
id: plot_count_stats.cwl
inputs:
- id: in_input
  doc: Full path to file containing table output by
  type: File?
  inputBinding:
    prefix: --input
- id: in_output_prefix
  doc: "'Prefix' of output files. This includes full path to\ndesired file and desired\
    \ file name before suffix\n(suffix will be .pdf)."
  type: File?
  inputBinding:
    prefix: --output_prefix
- id: in_exclude_suffix
  doc: "Text to remove from end of sample names in input file.\nDefault is to remove\
    \ nothing. Note that the sample\nnames in the input file have to match the names\
    \ in the\nmeta file AFTER they undergo this step."
  type: File?
  inputBinding:
    prefix: --exclude_suffix
- id: in_first_chr
  doc: "Chromosome to use a numerator on X-axis. For example,\nif one was comparing\
    \ chrX and chrY, and using chr19 to\nnormalize, recommended values would be: --first_chr\n\
    chrX --second_chr chrY --const_chr chr19."
  type: long?
  inputBinding:
    prefix: --first_chr
- id: in_second_chr
  doc: "Chromosome to use a numerator on Y-axis. For example,\nif one was comparing\
    \ chrX and chrY, and using chr19 to\nnormalize, recommended values would be: --first_chr\n\
    chrX --second_chr chrY --const_chr chr19."
  type: long?
  inputBinding:
    prefix: --second_chr
- id: in_const_chr
  doc: "Chromosome to use denominator on both the X- and\nY-axis. For example, if\
    \ one was comparing chrX and\nchrY, and using chr19 to normalize, recommended\
    \ values\nwould be: --first_chr chrX --second_chr chrY\n--const_chr chr19."
  type: long?
  inputBinding:
    prefix: --const_chr
- id: in_var_one_marker
  doc: "Way of designating variable 1 values in plot. Choices\nare 'color', 'shape',\
    \ or 'size'. Must be used in\nconjunction with --var1_marker_vals. Default is\n\
    'color'."
  type: string?
  inputBinding:
    prefix: --var1_marker
- id: in_var_one_marker_vals
  doc: "Marker values to use for variable 1 values. If\n--var1_marker is 'color',\
    \ then --var1_marker_vals\nshould be a space-separated list of Matplotlib colors\n\
    (e.g., 'red blue green'). If --var1_marker is 'shape'\nthen --var1_marker_vals\
    \ should be a space-separated\nlist of Matplotlib scatter markers (e.g., 'x o\
    \ D' for\nx, cicle, and Diamond). Finally, if --var1_marker is\n'size', then --var1_marker_vals\
    \ should be a space-\nseparated list of Matplotlib marker sizes in units of\n\
    points^2 (e.g., '5 10 15'). Default is 'red blue'."
  type: long[]
  inputBinding:
    prefix: --var1_marker_vals
- id: in_var_two_marker
  doc: "Way of designating variable 2 values in plot. Choices\nare 'color', 'shape',\
    \ or 'size'. Must be used in\nconjunction with --var2_marker_vals. Default is\n\
    'none', which will only process --var1_marker."
  type: string?
  inputBinding:
    prefix: --var2_marker
- id: in_var_two_marker_vals
  doc: "[VAR2_MARKER_VALS [VAR2_MARKER_VALS ...]]\nMarker values to use for variable\
    \ 2 values. If\n--var2_marker is 'color', then --var2_marker_vals\nshould be a\
    \ space-separated list of Matplotlib colors\n(e.g., 'red blue green'). If --var2_marker\
    \ is 'shape'\nthen --var2_marker_vals should be a space-separated\nlist of Matplotlib\
    \ scatter markers (e.g., 'x o D' for\nx, cicle, and Diamond). Finally, if --var2_marker\
    \ is\n'size', then --var2_marker_vals should be a space-\nseparated list of Matplotlib\
    \ marker sizes in units of\npoints^2 (e.g., '5 10 15'). Default is 'red blue'."
  type: boolean?
  inputBinding:
    prefix: --var2_marker_vals
- id: in_marker_size
  doc: "If 'size' is not selected for --var1_marker or\n--var2_marker, use this size\
    \ for markers. Default is\n100."
  type: long?
  inputBinding:
    prefix: --marker_size
- id: in_marker_color
  doc: "If 'color' is not selected for --var1_marker or\n--var2_marker, use this color\
    \ for markers. Default is\n'black'."
  type: long?
  inputBinding:
    prefix: --marker_color
- id: in_marker_shape
  doc: "If 'shape' is not selected for --var1_marker or\n--var2_marker, use this shape\
    \ for markers (see\nmatplotlib for possible shapes). Default is 'o' for\ncircles."
  type: long?
  inputBinding:
    prefix: --marker_shape
- id: in_marker_alpha
  doc: "Marker transparency ranging from 0.0 to 1.0 (1.0 being\nnontransparent). Default\
    \ is 0.5."
  type: double?
  inputBinding:
    prefix: --marker_alpha
- id: in_legend_marker_scale
  doc: "Use this value to scale maker size in legend, if\ndesired. Default is 1.0,\
    \ or no scaling."
  type: long?
  inputBinding:
    prefix: --legend_marker_scale
- id: in_x_title
  doc: "X axis title. Default is '<name of first chrom> /\n<name of const chrom> ratio'.\
    \ E.g., 'chrX / chr19\nratio'"
  type: long?
  inputBinding:
    prefix: --x_title
- id: in_y_title
  doc: "Y axis title. Default is '<name of second chrom> /\n<name of const chrom>\
    \ ratio'. E.g., 'chrY / chr19\nratio'\n"
  type: long?
  inputBinding:
    prefix: --y_title
- id: in_meta
  doc: ''
  type: string?
  inputBinding:
    prefix: --meta
- id: in_chrom_stats
  doc: --meta META           Full path to file containing metadata table. This file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: Full path to file containing table output by
  type: File?
  outputBinding:
    glob: $(inputs.in_input)
- id: out_output_prefix
  doc: "'Prefix' of output files. This includes full path to\ndesired file and desired\
    \ file name before suffix\n(suffix will be .pdf)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- plot_count_stats
