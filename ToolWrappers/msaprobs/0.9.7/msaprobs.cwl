class: CommandLineTool
id: msaprobs.cwl
inputs:
- id: in_outfile
  doc: specify the output file name (STDOUT by default)
  type: File
  inputBinding:
    prefix: --outfile
- id: in_num_threads
  doc: specify the number of threads used, and otherwise detect automatically
  type: long
  inputBinding:
    prefix: -num_threads
- id: in_clustalw
  doc: use CLUSTALW output format instead of FASTA format
  type: boolean
  inputBinding:
    prefix: -clustalw
- id: in_consistency
  doc: 'use 0 <= REPS <= 5 (default: 2) passes of consistency transformation'
  type: long
  inputBinding:
    prefix: --consistency
- id: in_iterative_refinement
  doc: 'use 0 <= REPS <= 1000 (default: 10) passes of iterative-refinement'
  type: long
  inputBinding:
    prefix: --iterative-refinement
- id: in_verbose
  doc: 'report progress while aligning (default: off)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_an_not
  doc: write annotation for multiple alignment to FILENAME
  type: File
  inputBinding:
    prefix: -annot
- id: in_alignment_order
  doc: 'print sequences in alignment order rather than input order (default: off)'
  type: boolean
  inputBinding:
    prefix: --alignment-order
- id: in_version
  doc: "print out version of MSAPROBS\n"
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: specify the output file name (STDOUT by default)
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- msaprobs
