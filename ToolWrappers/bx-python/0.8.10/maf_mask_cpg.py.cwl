class: CommandLineTool
id: maf_mask_cpg.py.cwl
inputs:
- id: in_mask
  doc: Character to use as mask ('?' is default)
  type: string?
  inputBinding:
    prefix: --mask
- id: in_restricted
  doc: Use restricted definition of CpGs
  type: boolean?
  inputBinding:
    prefix: --restricted
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
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
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- maf_mask_cpg.py
