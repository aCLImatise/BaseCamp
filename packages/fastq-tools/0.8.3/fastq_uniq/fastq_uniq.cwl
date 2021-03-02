class: CommandLineTool
id: fastq_uniq.cwl
inputs:
- id: in_verbose
  doc: print status along the way
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fastq-uniq
