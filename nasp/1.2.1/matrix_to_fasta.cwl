class: CommandLineTool
id: matrix_to_fasta.py.cwl
inputs:
- id: input_matrix
  doc: /path/to/NASP_matrix [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_matrix
- id: output_prefix
  doc: prefix for outfiles [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_prefix
- id: filter_frequency
  doc: filter out missing data if missing is greater than or equal to given frequency,
    defaults to 1
  type: string
  inputBinding:
    prefix: --filter_frequency
outputs: []
cwlVersion: v1.1
baseCommand:
- matrix_to_fasta.py
