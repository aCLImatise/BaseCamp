class: CommandLineTool
id: fasten_validate.cwl
inputs:
- id: n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: min_length
  doc: ''
  type: long
  inputBinding:
    prefix: --min-length
- id: min_quality
  doc: ''
  type: double
  inputBinding:
    prefix: --min-quality
- id: paired_end
  doc: ''
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: print_reads
  doc: ''
  type: boolean
  inputBinding:
    prefix: --print-reads
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_validate
