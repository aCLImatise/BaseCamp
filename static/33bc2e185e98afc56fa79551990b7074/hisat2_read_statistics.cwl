class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hisat2_read_statistics.py.cwl
inputs:
- id: reads_count_default
  doc: 'reads count (default: 10000)'
  type: string
  inputBinding:
    prefix: -n
- id: read_file
  doc: reads file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_read_statistics.py
