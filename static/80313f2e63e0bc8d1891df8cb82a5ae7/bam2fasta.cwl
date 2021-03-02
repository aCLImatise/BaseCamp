class: CommandLineTool
id: bam2fasta.cwl
inputs:
- id: in_command
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bam2fasta:1.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bam2fasta
