class: CommandLineTool
id: kalign.cwl
inputs:
- id: in_format
  doc: ': Output format. [Fasta]'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_reformat
  doc: ': Reformat existing alignment. [NA]'
  type: boolean?
  inputBinding:
    prefix: --reformat
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kalign
