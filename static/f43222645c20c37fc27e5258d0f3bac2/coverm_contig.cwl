class: CommandLineTool
id: ../../../coverm_contig.cwl
inputs:
- id: in_coupled
  doc: '...'
  type: string
  inputBinding:
    prefix: --coupled
- id: in_interleaved
  doc: '...'
  type: string
  inputBinding:
    prefix: --interleaved
- id: in_one
  doc: '...'
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '...'
  type: long
  inputBinding:
    prefix: '-2'
- id: in_reference
  doc: '...'
  type: string
  inputBinding:
    prefix: --reference
- id: in_single
  doc: '...'
  type: string
  inputBinding:
    prefix: --single
- id: in_contig_end_exclusion
  doc: ''
  type: string
  inputBinding:
    prefix: --contig-end-exclusion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coverm
- contig
