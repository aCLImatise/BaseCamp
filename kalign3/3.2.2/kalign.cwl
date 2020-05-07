class: CommandLineTool
id: kalign.cwl
inputs:
- id: format
  doc: ': Output format. [Fasta]'
  type: boolean
  inputBinding:
    prefix: --format
- id: reformat
  doc: ': Reformat existing alignment. [NA]'
  type: boolean
  inputBinding:
    prefix: --reformat
outputs: []
cwlVersion: v1.1
baseCommand:
- kalign
