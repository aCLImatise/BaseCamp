class: CommandLineTool
id: chicViewpointBackgroundModel.cwl
inputs:
- id: in_matrices
  doc: "The input matrices (samples) to build the background\nmodel on."
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_reference_points
  doc: "Bed file contains all reference points which should be\nused to build the\
    \ background model."
  type: File?
  inputBinding:
    prefix: --referencePoints
- id: in_average_contact_bin
  doc: "Average the contacts of n bins via a sliding window\napproach (Default: 5)."
  type: long?
  inputBinding:
    prefix: --averageContactBin
- id: in_truncate_zeros
  doc: "Truncates the zeros before the distributions are\nfitted. Use it in case you\
    \ observe an over dispersion."
  type: boolean?
  inputBinding:
    prefix: --truncateZeros
- id: in_out_filename
  doc: "The name of the background model file (Default:\nbackground_model.txt)."
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_threads
  doc: "Number of threads (uses the python multiprocessing\nmodule) (Default: 4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fixate_range
  doc: "Fixate score of backgroundmodel starting at distance\nx. E.g. all values greater\
    \ 500kb are set to the value\nof the 500kb bin (Default: 500000)."
  type: long?
  inputBinding:
    prefix: --fixateRange
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "The name of the background model file (Default:\nbackground_model.txt)."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- chicViewpointBackgroundModel
