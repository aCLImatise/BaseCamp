class: CommandLineTool
id: plot_regions_interactions.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rilseq:0.81--py_0
cwlVersion: v1.1
baseCommand:
- plot_regions_interactions.py
