class: CommandLineTool
id: ../../../sequence_subtract.py.cwl
inputs:
- id: in_input_format_fastq
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -i
- id: in_output_format_fastq
  doc: Output format (fastq).
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence_subtract.py
