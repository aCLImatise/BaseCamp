class: CommandLineTool
id: baseCalling_Matrix_analyzer.cwl
inputs:
- id: in_matrix_file
  doc: matrix file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
- id: in_min_quality_score
  doc: min quality score[default:0]
  type: long
  inputBinding:
    prefix: -m
- id: in_max_quality_score
  doc: max quality score[default:40]
  type: long
  inputBinding:
    prefix: -x
- id: in_ignore_bases_quality
  doc: 'ignore the bases that quality is B or #'
  type: boolean
  inputBinding:
    prefix: -B
- id: in_error_matrix_analyzer_do_tpl
  doc: Description
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- baseCalling_Matrix_analyzer
