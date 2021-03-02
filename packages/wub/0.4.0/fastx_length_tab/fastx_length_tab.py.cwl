class: CommandLineTool
id: ../../../fastx_length_tab.py.cwl
inputs:
- id: in_input_format_fasta
  doc: Input format (fasta).
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastx_length_tab.py
