class: CommandLineTool
id: parallel_group_many_proteins_many_patterns_noDNA.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- parallel_group_many_proteins_many_patterns_noDNA.py
