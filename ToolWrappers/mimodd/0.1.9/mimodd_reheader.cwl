class: CommandLineTool
id: mimodd_reheader.cwl
inputs:
- id: in_template
  doc: template SAM file providing header information
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: input BAM file to reheader
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mimodd
- reheader
