class: CommandLineTool
id: ../../../fastq_time_slice.py.cwl
inputs:
- id: in_tab_separeted_file
  doc: Tab separeted file produced by fastq_time_tab.py.
  type: File
  inputBinding:
    prefix: -t
- id: in_start_slice_percent
  doc: Start of slice as percent of total time.
  type: string
  inputBinding:
    prefix: -s
- id: in_end_slice_percent
  doc: End of slice as percent of total time.
  type: string
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_time_slice.py
