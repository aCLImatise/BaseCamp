class: CommandLineTool
id: find_duplicate_reads.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- find-duplicate-reads
