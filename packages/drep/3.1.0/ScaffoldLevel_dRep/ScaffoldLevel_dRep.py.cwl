class: CommandLineTool
id: ScaffoldLevel_dRep.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/drep:3.1.0--py_0
cwlVersion: v1.1
baseCommand:
- ScaffoldLevel_dRep.py
