class: CommandLineTool
id: test_data.fastq.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- test_data.fastq
