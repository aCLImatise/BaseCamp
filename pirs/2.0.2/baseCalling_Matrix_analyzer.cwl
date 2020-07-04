class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/baseCalling_Matrix_analyzer.cwl
inputs:
- id: matrix_file
  doc: matrix file
  type: string
  inputBinding:
    prefix: -i
- id: output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
- id: min_quality_score
  doc: min quality score[default:0]
  type: string
  inputBinding:
    prefix: -m
- id: max_quality_score
  doc: max quality score[default:40]
  type: string
  inputBinding:
    prefix: -x
- id: ignore_bases_quality
  doc: 'ignore the bases that quality is B or #'
  type: boolean
  inputBinding:
    prefix: -B
outputs: []
cwlVersion: v1.1
baseCommand:
- baseCalling_Matrix_analyzer
