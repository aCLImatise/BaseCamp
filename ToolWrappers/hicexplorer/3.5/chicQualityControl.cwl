class: CommandLineTool
id: chicQualityControl.cwl
inputs:
- id: in_matrices
  doc: The input matrices to apply the QC on.
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_reference_points
  doc: "Bed file contains all reference points which are\nchecked for a sufficient\
    \ number of interactions."
  type: long
  inputBinding:
    prefix: --referencePoints
- id: in_sparsity
  doc: "Viewpoints with a sparsity less than the value given\nare considered of bad\
    \ quality. If multiple matrices\nare given, the viewpoint is removed as soon as\
    \ it is\nof bad quality in at least one matrix."
  type: string
  inputBinding:
    prefix: --sparsity
- id: in_out_filename
  doc: "The output file name of the passed reference points.\nUsed as prefix for the\
    \ plots as well."
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_out_filename_histogram
  doc: The output file for the histogram plot.
  type: File
  inputBinding:
    prefix: --outFileNameHistogram
- id: in_out_filename_sparsity
  doc: The output file for the sparsity distribution plot.
  type: File
  inputBinding:
    prefix: --outFileNameSparsity
- id: in_threads
  doc: Number of threads.
  type: long
  inputBinding:
    prefix: --threads
- id: in_fixate_range
  doc: "Fixate score of background model starting at distance\nx. E.g. all values\
    \ greater than 500kb are set to the\nvalue of the 500kb bin."
  type: long
  inputBinding:
    prefix: --fixateRange
- id: in_dpi
  doc: "Optional parameter: Resolution for the image if\ntheoutput is a raster graphics\
    \ image (e.g png, jpg)"
  type: string
  inputBinding:
    prefix: --dpi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "The output file name of the passed reference points.\nUsed as prefix for the\
    \ plots as well."
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_out_filename_histogram
  doc: The output file for the histogram plot.
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename_histogram)
- id: out_out_filename_sparsity
  doc: The output file for the sparsity distribution plot.
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename_sparsity)
cwlVersion: v1.1
baseCommand:
- chicQualityControl
