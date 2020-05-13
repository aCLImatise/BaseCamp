class: CommandLineTool
id: mimodd_varextract.cwl
inputs:
- id: keep_alts
  doc: keep all alternate allele candidates even if they do not appear in any genotype
  type: boolean
  inputBinding:
    prefix: --keep-alts
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: ofile
  doc: 'redirect the output (variant sites) to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- varextract
