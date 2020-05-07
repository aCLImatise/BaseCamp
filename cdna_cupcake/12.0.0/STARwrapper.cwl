class: CommandLineTool
id: STARwrapper.py.cwl
inputs:
- id: cpus
  doc: 'Number of threads (default: 10)'
  type: string
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- STARwrapper.py
