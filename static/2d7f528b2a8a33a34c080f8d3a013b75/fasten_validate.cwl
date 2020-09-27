class: CommandLineTool
id: fasten_validate.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_print_reads
  doc: ''
  type: boolean
  inputBinding:
    prefix: --print-reads
- id: in_paired_end
  doc: ''
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_min_quality
  doc: ''
  type: double
  inputBinding:
    prefix: --min-quality
- id: in_min_length
  doc: ''
  type: long
  inputBinding:
    prefix: --min-length
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasten_validate
