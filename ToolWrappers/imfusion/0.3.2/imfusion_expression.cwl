class: CommandLineTool
id: imfusion_expression.cwl
inputs:
- id: in_reference
  doc: '[--output OUTPUT] [--paired]'
  type: string
  inputBinding:
    prefix: --reference
- id: in_paired
  doc: Generate counts by counting fragments instead of reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_sample_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --sample_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- imfusion-expression
