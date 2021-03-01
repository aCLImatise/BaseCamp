class: CommandLineTool
id: pore_c_refgenome_fragments_to_hicref.cwl
inputs:
- id: in_fragments_parquet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hi_cref
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- refgenome
- fragments-to-hicref
