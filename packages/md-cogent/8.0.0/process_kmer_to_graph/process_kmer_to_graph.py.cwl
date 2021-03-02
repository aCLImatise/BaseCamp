class: CommandLineTool
id: process_kmer_to_graph.py.cwl
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
- process_kmer_to_graph.py
