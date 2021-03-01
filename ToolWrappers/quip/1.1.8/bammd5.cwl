class: CommandLineTool
id: bammd5.cwl
inputs:
- id: in_input_sam_default
  doc: input is SAM (by default BAM is assumed)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/quip:1.1.8--hed695b0_0
cwlVersion: v1.1
baseCommand:
- bammd5
