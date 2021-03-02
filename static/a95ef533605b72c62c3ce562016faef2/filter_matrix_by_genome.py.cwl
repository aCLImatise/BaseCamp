class: CommandLineTool
id: filter_matrix_by_genome.py.cwl
inputs:
- id: in_in_matrix
  doc: /path/to/NASP_matrix [REQUIRED]
  type: File?
  inputBinding:
    prefix: --in_matrix
- id: in_out_prefix
  doc: prefix for output files [REQUIRED]
  type: string?
  inputBinding:
    prefix: --out_prefix
- id: in_genomes
  doc: /path/to/genomes_file [new line delimited] [REQUIRED]
  type: File?
  inputBinding:
    prefix: --genomes
- id: in_actions
  doc: "action to perform (keep, remove), defaults to keep\n"
  type: string?
  inputBinding:
    prefix: --actions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_matrix_by_genome.py
