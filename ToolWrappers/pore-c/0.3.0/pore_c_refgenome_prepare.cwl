class: CommandLineTool
id: pore_c_refgenome_prepare.cwl
inputs:
- id: in_genome_id
  doc: An ID for this genome assembly
  type: string?
  inputBinding:
    prefix: --genome-id
- id: in_reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_prefix
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
- prepare
