class: CommandLineTool
id: matrix_to_fasta.py.cwl
inputs:
- id: in_input_matrix
  doc: /path/to/NASP_matrix [REQUIRED]
  type: File
  inputBinding:
    prefix: --input_matrix
- id: in_output_prefix
  doc: prefix for outfiles [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_filter_frequency
  doc: "filter out missing data if missing is greater than or\nequal to given frequency,\
    \ defaults to 1\n"
  type: long
  inputBinding:
    prefix: --filter_frequency
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- matrix_to_fasta.py
