class: CommandLineTool
id: smof_wc.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: chars
  doc: writes the summed length of all sequences
  type: boolean
  inputBinding:
    prefix: --chars
- id: lines
  doc: writes the total number of sequences
  type: boolean
  inputBinding:
    prefix: --lines
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- wc
