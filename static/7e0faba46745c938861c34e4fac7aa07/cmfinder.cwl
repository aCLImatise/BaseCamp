class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cmfinder.cwl
inputs:
- id: _candidate_file
  doc: ': the candidate file '
  type: string
  inputBinding:
    prefix: -c
- id: initial_motif_alignment
  doc: ': the initial motif alignment '
  type: string
  inputBinding:
    prefix: -a
- id: initial_covariance_model
  doc: ': the initial covariance model'
  type: string
  inputBinding:
    prefix: -i
- id: output_motif_structural
  doc: ': the output motif structural alignment in stockholm format '
  type: string
  inputBinding:
    prefix: -o
- id: print_intermediate_alignments
  doc: ': print intermediate alignments '
  type: string
  inputBinding:
    prefix: -v
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cm_file_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cmfinder
