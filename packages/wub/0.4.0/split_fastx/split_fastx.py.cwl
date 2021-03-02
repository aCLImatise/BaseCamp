class: CommandLineTool
id: ../../../split_fastx.py.cwl
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
- id: in_batch_size_none
  doc: Batch size (None).
  type: long
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- split_fastx.py
