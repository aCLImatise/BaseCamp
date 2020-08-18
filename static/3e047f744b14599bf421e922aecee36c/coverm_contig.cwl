class: CommandLineTool
id: ../../../coverm_contig.cwl
inputs:
- id: contig_end_exclusion
  doc: ''
  type: string
  inputBinding:
    prefix: --contig-end-exclusion
- id: coupled
  doc: ''
  type: string
  inputBinding:
    prefix: --coupled
outputs: []
cwlVersion: v1.1
baseCommand:
- coverm
- contig
