#!/usr/bin/env cwl-runner

baseCommand:
- hicCorrelate
class: CommandLineTool
cwlVersion: v1.0
id: hiccorrelate
inputs:
- doc: 'Matrices to correlate (usually .h5 but other formats are allowed). hicCorrelate
    is better used on un- corrected matrices in order to exclude any changes introduced
    by the correction. (default: None)'
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: 'Minimum value for the heatmap intensities. If not specified the value is set
    automatically. (default: None)'
  id: zmin
  inputBinding:
    prefix: --zMin
  type: string
- doc: 'Maximum value for the heatmap intensities.If not specified the value is set
    automatically. (default: None)'
  id: zmax
  inputBinding:
    prefix: --zMax
  type: string
- doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html (default: jet)'
  id: colormap
  inputBinding:
    prefix: --colorMap
  type: boolean
- doc: 'Image format type. If given, this option overrides the image format based
    on the plotFile ending. The available options are: png, emf, eps, pdf and svg.
    (default: None)'
  id: plot_file_format
  inputBinding:
    prefix: --plotFileFormat
  type: File
- doc: 'If set, then the correlation number is plotted on top of the heatmap. (default:
    False)'
  id: plot_numbers
  inputBinding:
    prefix: --plotNumbers
  type: boolean
- doc: 'Correlation method to use. (default: pearson)'
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: 'If set, then the log1p of the matrix values is used. This parameter has no
    effect for Spearman correlations but changes the output of Pearson correlation
    and, for the scatter plot, if set, the visualization of the values is easier.
    (default: False)'
  id: log1p
  inputBinding:
    prefix: --log1p
  type: boolean
- doc: 'sample2 [sample1 sample2 ...], -l sample1 sample2 [sample1 sample2 ...] User
    defined labels instead of default labels from file names. Multiple labels have
    to be separated by space, e.g. --labels sample1 sample2 sample3 (default: None)'
  id: labels
  inputBinding:
    prefix: --labels
  type: string
- doc: 'In bp with the format low_range:high_range, for example 1000000:2000000. If
    --range is given only counts within this range are considered. The range should
    be adjusted to the size of interacting domains in the genome you are working with.
    (default: None)'
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: 'File name to save the resulting heatmap plot. (default: None)'
  id: out_filename_heat_map
  inputBinding:
    prefix: --outFileNameHeatmap
  type: string
- doc: 'File name to save the resulting scatter plot. (default: None)'
  id: out_filename_scatter
  inputBinding:
    prefix: --outFileNameScatter
  type: string
- doc: 'List of chromosomes to be included in the correlation. (default: None)'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: "Number of threads. Using the python multiprocessing module. Is only used with\
    \ 'cool' matrix format. One master process which is used to read the input file\
    \ into the buffer and one process which is merging the output bam files of the\
    \ processes into one output bam file. All other threads do the actual computation.\
    \ (default: 4)"
  id: threads
  inputBinding:
    prefix: --threads
  type: string
