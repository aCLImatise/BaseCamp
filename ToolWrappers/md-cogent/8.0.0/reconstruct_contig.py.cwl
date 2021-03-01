class: CommandLineTool
id: reconstruct_contig.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- reconstruct_contig.py
