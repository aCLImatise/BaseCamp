class: CommandLineTool
id: bamstats.py.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_statistics
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- bamstats.py
