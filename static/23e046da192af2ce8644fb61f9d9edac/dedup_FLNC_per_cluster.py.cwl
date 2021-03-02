class: CommandLineTool
id: dedup_FLNC_per_cluster.py.cwl
inputs:
- id: in_gff
  doc: ''
  type: string?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_de_duplicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fl_nc
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_per
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_cluster
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- dedup_FLNC_per_cluster.py
