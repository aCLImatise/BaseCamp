class: CommandLineTool
id: bamcleanheader.py.cwl
inputs:
- id: in_is_sam
  doc: input is SAM
  type: boolean?
  inputBinding:
    prefix: --is_sam
- id: in_input
  doc: SAM/BAM file to inject header lines into. If '-' or absent then defaults to
    stdin.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamkit:16.07.26--py_0
cwlVersion: v1.1
baseCommand:
- bamcleanheader.py
