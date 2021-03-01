class: CommandLineTool
id: fastq_validator.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1
cwlVersion: v1.1
baseCommand:
- fastq_validator.sh
