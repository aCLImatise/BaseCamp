class: CommandLineTool
id: agfusion_build.cwl
inputs:
- id: dir
  doc: Directory to write database file to.
  type: string
  inputBinding:
    prefix: --dir
- id: species
  doc: The species (e.g. homo_sapiens).
  type: string
  inputBinding:
    prefix: --species
- id: release
  doc: The ensembl release (e.g. 87).
  type: string
  inputBinding:
    prefix: --release
- id: pfam
  doc: File containing PFAM ID mappings.
  type: string
  inputBinding:
    prefix: --pfam
- id: server
  doc: (optional) Ensembl server (default ensembldb.ensembl.org)
  type: string
  inputBinding:
    prefix: --server
outputs: []
cwlVersion: v1.1
baseCommand:
- agfusion
- build
