class: CommandLineTool
id: pore_c_refgenome_virtual_digest.cwl
inputs:
- id: in_digest_type
  doc: "[enzyme|regex|bin]\nThe type of digest you want to do"
  type: boolean?
  inputBinding:
    prefix: --digest-type
- id: in_n_workers
  doc: "The number of dask_workers to use  [default:\n1]"
  type: long?
  inputBinding:
    prefix: --n_workers
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cut_on
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- virtual-digest
