class: CommandLineTool
id: hicCorrelate.cwl
inputs:
- id: matrices
  doc: 'Matrices to correlate (usually .h5 but other formats are allowed). hicCorrelate
    is better used on un- corrected matrices in order to exclude any changes introduced
    by the correction. (default: None)'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: zmin
  doc: 'Minimum value for the heatmap intensities. If not specified the value is set
    automatically. (default: None)'
  type: string
  inputBinding:
    prefix: --zMin
- id: zmax
  doc: 'Maximum value for the heatmap intensities.If not specified the value is set
    automatically. (default: None)'
  type: string
  inputBinding:
    prefix: --zMax
- id: colormap
  doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html (default: jet)'
  type: boolean
  inputBinding:
    prefix: --colorMap
- id: plot_file_format
  doc: 'Image format type. If given, this option overrides the image format based
    on the plotFile ending. The available options are: png, emf, eps, pdf and svg.
    (default: None)'
  type: File
  inputBinding:
    prefix: --plotFileFormat
- id: plot_numbers
  doc: 'If set, then the correlation number is plotted on top of the heatmap. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --plotNumbers
- id: method
  doc: 'Correlation method to use. (default: pearson)'
  type: string
  inputBinding:
    prefix: --method
- id: log1p
  doc: 'If set, then the log1p of the matrix values is used. This parameter has no
    effect for Spearman correlations but changes the output of Pearson correlation
    and, for the scatter plot, if set, the visualization of the values is easier.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --log1p
- id: labels
  doc: 'sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...] User
    defined labels instead of default labels from file names. Multiple labels have
    to be separated by space, e.g. --labels sample1 sample2 sample3 (default: None)'
  type: string
  inputBinding:
    prefix: --labels
- id: range
  doc: 'In bp with the format low_range:high_range, for example 1000000:2000000. If
    --range is given only counts within this range are considered. The range should
    be adjusted to the size of interacting domains in the genome you are working with.
    (default: None)'
  type: string
  inputBinding:
    prefix: --range
- id: out_filename_heat_map
  doc: 'File name to save the resulting heatmap plot. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileNameHeatmap
- id: out_filename_scatter
  doc: 'File name to save the resulting scatter plot. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileNameScatter
- id: chromosomes
  doc: 'List of chromosomes to be included in the correlation. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: threads
  doc: "Number of threads. Using the python multiprocessing module. Is only used with\
    \ 'cool' matrix format. One master process which is used to read the input file\
    \ into the buffer and one process which is merging the output bam files of the\
    \ processes into one output bam file. All other threads do the actual computation.\
    \ (default: 4)"
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hicCorrelate
