class: CommandLineTool
id: baseCalling_Matrix_analyzer.cwl
inputs:
- id: i
  doc: matrix file
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: min quality score[default:0]
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: max quality score[default:40]
  type: string
  inputBinding:
    prefix: -x
- id: b
  doc: 'ignore the bases that quality is B or #'
  type: boolean
  inputBinding:
    prefix: -B
outputs: []
cwlVersion: v1.1
baseCommand:
- baseCalling_Matrix_analyzer
