class: CommandLineTool
id: fastq_interleave.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1205--h8b12597_0
cwlVersion: v1.1
baseCommand:
- fastq-interleave
