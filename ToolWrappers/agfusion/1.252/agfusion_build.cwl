class: CommandLineTool
id: agfusion_build.cwl
inputs:
- id: in_dir
  doc: Directory to write database file to.
  type: File?
  inputBinding:
    prefix: --dir
- id: in_species
  doc: The species (e.g. homo_sapiens).
  type: string?
  inputBinding:
    prefix: --species
- id: in_release
  doc: The ensembl release (e.g. 87).
  type: long?
  inputBinding:
    prefix: --release
- id: in_pfam
  doc: File containing PFAM ID mappings.
  type: File?
  inputBinding:
    prefix: --pfam
- id: in_server
  doc: "(optional) Ensembl server (default\nensembldb.ensembl.org)\n"
  type: string?
  inputBinding:
    prefix: --server
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- agfusion
- build
