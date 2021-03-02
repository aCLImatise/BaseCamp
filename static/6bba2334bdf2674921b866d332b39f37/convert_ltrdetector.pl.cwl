class: CommandLineTool
id: convert_ltrdetector.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ltr_retriever:2.9.0--0
cwlVersion: v1.1
baseCommand:
- convert_ltrdetector.pl
