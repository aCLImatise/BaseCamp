class: CommandLineTool
id: ../../../fastx_grep.py.cwl
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
- id: in_comma_separated_list
  doc: Comma separated list of read names to select.
  type: string
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastx_grep.py
