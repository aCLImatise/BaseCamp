class: CommandLineTool
id: simple_stats_post_collapse.py.cwl
inputs:
- id: in_input_prefix
  doc: 'Input prefix, ex: hq.5merge.collapsed'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- simple_stats_post_collapse.py
