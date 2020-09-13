class: CommandLineTool
id: ../../../cnv_expression_correlate.py.cwl
inputs:
- id: in_output
  doc: "Output file name (summary table).\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name (summary table).\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cnv_expression_correlate.py
