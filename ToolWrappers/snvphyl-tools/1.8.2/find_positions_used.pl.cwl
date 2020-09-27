class: CommandLineTool
id: find_positions_used.pl.cwl
inputs:
- id: in_core_pos
  doc: ':  Core positions file from vcf2core.pl (GFF format).'
  type: boolean
  inputBinding:
    prefix: --core-pos
- id: in_bad_pos
  doc: ': Bad positions file, format of'
  type: boolean
  inputBinding:
    prefix: --bad-pos
- id: in_tab
  doc: ': Print in tab-deliminted format'
  type: boolean
  inputBinding:
    prefix: --tab
- id: in_reference
  doc: ':  Reference fasta file.'
  type: boolean
  inputBinding:
    prefix: --reference
- id: in_chromosome
  doc: start   end
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find-positions-used.pl
