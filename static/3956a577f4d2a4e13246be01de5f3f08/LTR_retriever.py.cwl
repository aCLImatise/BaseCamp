class: CommandLineTool
id: LTR_retriever.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tesorter:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- LTR_retriever.py
