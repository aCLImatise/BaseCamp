class: CommandLineTool
id: cmfinder.cwl
inputs:
- id: in__candidate_file
  doc: ': the candidate file'
  type: File?
  inputBinding:
    prefix: -c
- id: in_initial_motif_alignment
  doc: ': the initial motif alignment'
  type: File?
  inputBinding:
    prefix: -a
- id: in_initial_covariance_model
  doc: ': the initial covariance model'
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_motif_alignment
  doc: ': the output motif structural alignment in stockholm format'
  type: File?
  inputBinding:
    prefix: -o
- id: in_print_intermediate_alignments
  doc: ': print intermediate alignments'
  type: string?
  inputBinding:
    prefix: -v
- id: in_gap_threshold_determine
  doc: ': the gap threshold to determine the conserved column'
  type: string?
  inputBinding:
    prefix: --g
- id: in_hmm
  doc: ': apply HMM filter'
  type: boolean?
  inputBinding:
    prefix: --hmm
- id: in_cmz_asha
  doc: ': apply cmzasha filter'
  type: boolean?
  inputBinding:
    prefix: --cmzasha
- id: in_update
  doc: ': Update instead of scanning for new candidates at each iteration'
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_in_format
  doc: ': specify that input alignment is in format <s>'
  type: string?
  inputBinding:
    prefix: --informat
- id: in_fragmentary
  doc: ': account for fragmentary input sequences'
  type: boolean?
  inputBinding:
    prefix: --fragmentary
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cm_file_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmfinder
