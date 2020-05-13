class: CommandLineTool
id: fastq_qual_tab.py_input_fastq.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_qual_tab.py
- input_fastq
