class: CommandLineTool
id: hisat2_read_statistics.py.cwl
inputs:
- id: read_file
  doc: reads file
  type: string
  inputBinding:
    position: 0
- id: n
  doc: 'reads count (default: 10000)'
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_read_statistics.py
