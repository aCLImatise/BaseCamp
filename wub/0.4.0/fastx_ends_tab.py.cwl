class: CommandLineTool
id: ../../../fastx_ends_tab.py.cwl
inputs:
- id: in_input_format_fastq
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -i
- id: in_n
  doc: .
  type: string
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastx_ends_tab.py
