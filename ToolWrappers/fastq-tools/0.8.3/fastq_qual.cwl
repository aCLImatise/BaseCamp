class: CommandLineTool
id: fastq_qual.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fastq-qual
