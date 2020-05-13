class: CommandLineTool
id: chicQualityControl.cwl
inputs:
- id: matrices
  doc: The input matrices to apply the QC on.
  type: string[]
  inputBinding:
    prefix: --matrices
- id: reference_points
  doc: Bed file contains all reference points which are checked for a sufficient number
    of interactions.
  type: string
  inputBinding:
    prefix: --referencePoints
- id: sparsity
  doc: Viewpoints with a sparsity less than the value given are considered of bad
    quality. If multiple matrices are given, the viewpoint is removed as soon as it
    is of bad quality in at least one matrix.
  type: string
  inputBinding:
    prefix: --sparsity
- id: out_filename
  doc: The output file name of the passed reference points. Used as prefix for the
    plots as well.
  type: string
  inputBinding:
    prefix: --outFileName
- id: out_filename_histogram
  doc: The output file for the histogram plot.
  type: string
  inputBinding:
    prefix: --outFileNameHistogram
- id: out_filename_sparsity
  doc: The output file for the sparsity distribution plot.
  type: string
  inputBinding:
    prefix: --outFileNameSparsity
- id: threads
  doc: Number of threads.
  type: string
  inputBinding:
    prefix: --threads
- id: fixate_range
  doc: Fixate score of background model starting at distance x. E.g. all values greater
    than 500kb are set to the value of the 500kb bin.
  type: string
  inputBinding:
    prefix: --fixateRange
- id: dpi
  doc: 'Optional parameter: Resolution for the image if theoutput is a raster graphics
    image (e.g png, jpg)'
  type: string
  inputBinding:
    prefix: --dpi
outputs: []
cwlVersion: v1.1
baseCommand:
- chicQualityControl
