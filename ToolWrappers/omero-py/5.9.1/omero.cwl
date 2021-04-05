class: CommandLineTool
id: omero.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/omero-py:5.9.1--py_0
cwlVersion: v1.1
baseCommand:
- omero
