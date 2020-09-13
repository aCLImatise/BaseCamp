class: CommandLineTool
id: ../../../sequence_filter.py.cwl
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
- id: in_minimum_mean_quality
  doc: Minimum mean quality value (0.0).
  type: long
  inputBinding:
    prefix: -q
- id: in_minimum_length_
  doc: Minimum length (0).
  type: long
  inputBinding:
    prefix: -l
- id: in_reverse_complement_sequences
  doc: Reverse complement sequences.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_maximum_length_none
  doc: Maximum length (None).
  type: long
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence_filter.py
