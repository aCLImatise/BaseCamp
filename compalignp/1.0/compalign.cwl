class: CommandLineTool
id: compalign.cwl
inputs:
- id: c
  doc: ': only compare under marked #=CS consensus structure'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_format
  doc: ': specify that both alignments are in format <s> (MSF, for instance)'
  type: string
  inputBinding:
    prefix: --informat
- id: quiet
  doc: ': suppress verbose header (used in regression testing)'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- compalign
