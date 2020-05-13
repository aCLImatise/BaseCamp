class: CommandLineTool
id: msaprobs.cwl
inputs:
- id: outfile
  doc: specify the output file name (STDOUT by default)
  type: string
  inputBinding:
    prefix: --outfile
- id: num_threads
  doc: specify the number of threads used, and otherwise detect automatically
  type: long
  inputBinding:
    prefix: -num_threads
- id: clustalw
  doc: use CLUSTALW output format instead of FASTA format
  type: boolean
  inputBinding:
    prefix: -clustalw
- id: consistency
  doc: 'use 0 <= REPS <= 5 (default: 2) passes of consistency transformation'
  type: string
  inputBinding:
    prefix: --consistency
- id: iterative_refinement
  doc: 'use 0 <= REPS <= 1000 (default: 10) passes of iterative-refinement'
  type: string
  inputBinding:
    prefix: --iterative-refinement
- id: verbose
  doc: 'report progress while aligning (default: off)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: an_not
  doc: write annotation for multiple alignment to FILENAME
  type: File
  inputBinding:
    prefix: -annot
- id: alignment_order
  doc: 'print sequences in alignment order rather than input order (default: off)'
  type: boolean
  inputBinding:
    prefix: --alignment-order
- id: version
  doc: 'print out version of MSAPROBS '
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- msaprobs
