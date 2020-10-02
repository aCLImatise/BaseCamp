class: CommandLineTool
id: hisat2_read_statistics.py.cwl
inputs:
- id: in_reads_count_default
  doc: 'reads count (default: 10000)'
  type: long
  inputBinding:
    prefix: -n
- id: in_read_file
  doc: reads file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2_read_statistics.py
