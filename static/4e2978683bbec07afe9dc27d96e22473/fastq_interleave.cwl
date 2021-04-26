class: CommandLineTool
id: fastq_interleave.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1219--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- fastq-interleave
