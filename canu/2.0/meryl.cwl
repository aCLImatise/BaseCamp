class: CommandLineTool
id: meryl.cwl
inputs:
- id: union
  doc: '[count k=22 input1.fasta output input1] \ [count k=22 input2.fasta output
    input2]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- meryl
