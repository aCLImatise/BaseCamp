class: CommandLineTool
id: pm4ngs_chipexo_demo.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pm4ngs:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- pm4ngs-chipexo-demo
