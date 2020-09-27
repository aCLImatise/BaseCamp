class: CommandLineTool
id: compalign.cwl
inputs:
- id: in_only_compare_marked
  doc: ': only compare under marked #=CS consensus structure'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_in_format
  doc: ': specify that both alignments are in format <s> (MSF, for instance)'
  type: string
  inputBinding:
    prefix: --informat
- id: in_quiet
  doc: ': suppress verbose header (used in regression testing)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_trusted_dot_ali
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_test_dot_ali
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compalign
