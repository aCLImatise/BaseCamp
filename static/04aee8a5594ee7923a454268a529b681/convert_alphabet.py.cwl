class: CommandLineTool
id: ../../../convert_alphabet.py.cwl
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
- id: in_rnadna_alphabet_conversion
  doc: RNA->DNA alphabet conversion.
  type: boolean
  inputBinding:
    prefix: -D
- id: in_dnarna_alphabet_conversion
  doc: DNA->RNA alphabet conversion.
  type: boolean
  inputBinding:
    prefix: -R
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_alphabet.py
