class: CommandLineTool
id: test_data.fastq.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bismark:0.23.0--0
cwlVersion: v1.1
baseCommand:
- test_data.fastq
