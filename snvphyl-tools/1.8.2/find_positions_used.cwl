class: CommandLineTool
id: ../../../find_positions_used.pl.cwl
inputs:
- id: tab
  doc: ': Print in tab-deliminted format'
  type: boolean
  inputBinding:
    prefix: --tab
- id: reference
  doc: ':  Reference fasta file.'
  type: boolean
  inputBinding:
    prefix: --reference
outputs: []
cwlVersion: v1.1
baseCommand:
- find-positions-used.pl
