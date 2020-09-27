class: CommandLineTool
id: hicCorrelate.cwl
inputs:
- id: in_out_filename_scatter
  doc: "File name to save the resulting scatter plot.\n(default: None)"
  type: File
  inputBinding:
    prefix: --outFileNameScatter
- id: in_matrices
  doc: "Matrices to correlate (usually .h5 but other formats\nare allowed). hicCorrelate\
    \ is better used on un-\ncorrected matrices in order to exclude any changes\n\
    introduced by the correction. (default: None)"
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_zmin
  doc: "Minimum value for the heatmap intensities. If not\nspecified the value is\
    \ set automatically. (default:\nNone)"
  type: string
  inputBinding:
    prefix: --zMin
- id: in_zmax
  doc: "Maximum value for the heatmap intensities.If not\nspecified the value is set\
    \ automatically. (default:\nNone)"
  type: string
  inputBinding:
    prefix: --zMax
- id: in_colormap
  doc: "Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html (default: jet)"
  type: boolean
  inputBinding:
    prefix: --colorMap
- id: in_plot_file_format
  doc: "Image format type. If given, this option overrides the\nimage format based\
    \ on the plotFile ending. The\navailable options are: png, emf, eps, pdf and svg.\n\
    (default: None)"
  type: File
  inputBinding:
    prefix: --plotFileFormat
- id: in_plot_numbers
  doc: "If set, then the correlation number is plotted on top\nof the heatmap. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --plotNumbers
- id: in_method
  doc: 'Correlation method to use. (default: pearson)'
  type: string
  inputBinding:
    prefix: --method
- id: in_logo_nep
  doc: "If set, then the log1p of the matrix values is used.\nThis parameter has no\
    \ effect for Spearman correlations\nbut changes the output of Pearson correlation\
    \ and, for\nthe scatter plot, if set, the visualization of the\nvalues is easier.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --log1p
- id: in_labels
  doc: "sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...]\n\
    User defined labels instead of default labels from\nfile names. Multiple labels\
    \ have to be separated by\nspace, e.g. --labels sample1 sample2 sample3 (default:\n\
    None)"
  type: long
  inputBinding:
    prefix: --labels
- id: in_range
  doc: "In bp with the format low_range:high_range, for\nexample 1000000:2000000.\
    \ If --range is given only\ncounts within this range are considered. The range\n\
    should be adjusted to the size of interacting domains\nin the genome you are working\
    \ with. (default: None)"
  type: long
  inputBinding:
    prefix: --range
- id: in_out_filename_heat_map
  doc: "File name to save the resulting heatmap plot.\n(default: None)"
  type: File
  inputBinding:
    prefix: --outFileNameHeatmap
- id: in_chromosomes
  doc: "List of chromosomes to be included in the correlation.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. Is only used\
    \ with 'cool' matrix format. One\nmaster process which is used to read the input\
    \ file\ninto the buffer and one process which is merging the\noutput bam files\
    \ of the processes into one output bam\nfile. All other threads do the actual\
    \ computation.\n(default: 4)"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename_scatter
  doc: "File name to save the resulting scatter plot.\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename_scatter)
- id: out_out_filename_heat_map
  doc: "File name to save the resulting heatmap plot.\n(default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename_heat_map)
cwlVersion: v1.1
baseCommand:
- hicCorrelate
