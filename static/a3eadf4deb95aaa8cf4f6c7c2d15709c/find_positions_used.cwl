class: CommandLineTool
id: find_positions_used.pl.cwl
inputs:
- id: chromosome
  doc: start   end
  type: string
  inputBinding:
    position: 0
- id: core_pos
  doc: ':  Core positions file from vcf2core.pl (GFF format).'
  type: boolean
  inputBinding:
    prefix: --core-pos
- id: bad_pos
  doc: ': Bad positions file, format of'
  type: boolean
  inputBinding:
    prefix: --bad-pos
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
