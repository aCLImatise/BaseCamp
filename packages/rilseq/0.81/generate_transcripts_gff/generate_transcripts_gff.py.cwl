class: CommandLineTool
id: generate_transcripts_gff.py.cwl
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
- generate_transcripts_gff.py
