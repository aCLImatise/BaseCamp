class: CommandLineTool
id: chicViewpointBackgroundModel.cwl
inputs:
- id: matrices
  doc: The input matrices (samples) to build the background model on.
  type: string[]
  inputBinding:
    prefix: --matrices
- id: reference_points
  doc: Bed file contains all reference points which should be used to build the background
    model.
  type: string
  inputBinding:
    prefix: --referencePoints
- id: average_contact_bin
  doc: Average the contacts of n bins via a sliding window approach.
  type: string
  inputBinding:
    prefix: --averageContactBin
- id: truncate_zeros
  doc: Truncates the zeros before the distributions are fitted. Use it in case you
    observe an over dispersion.
  type: boolean
  inputBinding:
    prefix: --truncateZeros
- id: out_filename
  doc: The name of the background model file
  type: string
  inputBinding:
    prefix: --outFileName
- id: threads
  doc: Number of threads (uses the python multiprocessing module).
  type: string
  inputBinding:
    prefix: --threads
- id: fixate_range
  doc: Fixate score of backgroundmodel starting at distance x. E.g. all values greater
    500kb are set to the value of the 500kb bin.
  type: string
  inputBinding:
    prefix: --fixateRange
outputs: []
cwlVersion: v1.1
baseCommand:
- chicViewpointBackgroundModel
