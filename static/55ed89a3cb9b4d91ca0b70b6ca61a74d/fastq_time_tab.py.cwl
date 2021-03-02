class: CommandLineTool
id: fastq_time_tab.py.cwl
inputs:
- id: in_tab_separated_file
  doc: Tab separated file to save read time table.
  type: File?
  inputBinding:
    prefix: -t
- id: in_fast_q
  doc: Input fastq file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq_time_tab.py
