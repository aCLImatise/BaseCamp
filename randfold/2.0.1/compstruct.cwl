class: CommandLineTool
id: ../../../compstruct.cwl
inputs:
- id: in_format
  doc: ': specify that both alignments are in format <s> (SELEX, for instance)'
  type: string
  inputBinding:
    prefix: --informat
- id: quiet
  doc: ': suppress verbose header (used in regression testing)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- compstruct
