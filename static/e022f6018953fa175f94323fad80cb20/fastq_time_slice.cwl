class: CommandLineTool
id: fastq_time_slice.py.cwl
inputs:
- id: input_fast_q
  doc: 'Input fastq (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_fast_q
  doc: 'Output fastq (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: t
  doc: Tab separeted file produced by fastq_time_tab.py.
  type: string
  inputBinding:
    prefix: -t
- id: s
  doc: Start of slice as percent of total time.
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: End of slice as percent of total time.
  type: string
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_time_slice.py
