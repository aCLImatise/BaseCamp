class: CommandLineTool
id: axt_to_maf.py.cwl
inputs:
- id: in_silent
  doc: ': prevents stats report'
  type: boolean?
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- axt_to_maf.py
