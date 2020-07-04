class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/STARwrapper.py.cwl
inputs:
- id: cpus
  doc: 'Number of threads (default: 10)'
  type: string
  inputBinding:
    prefix: --cpus
- id: wrapper
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: running
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: star_long_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- STARwrapper.py
