class: CommandLineTool
id: maf_thread_for_species.py.cwl
inputs:
- id: in_no_fuse
  doc: Don't attempt to join blocks, just remove rows.
  type: boolean?
  inputBinding:
    prefix: --nofuse
- id: in_species_two
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- maf_thread_for_species.py
