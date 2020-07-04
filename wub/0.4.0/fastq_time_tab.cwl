class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_time_tab.py.cwl
inputs:
- id: tab_separated_file
  doc: Tab separated file to save read time table.
  type: string
  inputBinding:
    prefix: -t
- id: fast_q
  doc: Input fastq file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_time_tab.py
