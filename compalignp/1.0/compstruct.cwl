class: CommandLineTool
id: ../../../compstruct.cwl
inputs:
- id: in_in_format
  doc: ': specify that both alignments are in format <s> (SELEX, for instance)'
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compstruct
