class: CommandLineTool
id: filter_matrix_by_genome.py.cwl
inputs:
- id: in_matrix
  doc: /path/to/NASP_matrix [REQUIRED]
  type: string
  inputBinding:
    prefix: --in_matrix
- id: out_prefix
  doc: prefix for output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --out_prefix
- id: genomes
  doc: /path/to/genomes_file [new line delimited] [REQUIRED]
  type: string
  inputBinding:
    prefix: --genomes
- id: actions
  doc: action to perform (keep, remove), defaults to keep
  type: string
  inputBinding:
    prefix: --actions
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_matrix_by_genome.py
