class: CommandLineTool
id: CanSNPs.pl.cwl
inputs:
- id: threshold
  doc: Fraction of nucleotide in a group for defining Canonical SNPs (default :0.5)
  type: boolean
  inputBinding:
    prefix: --threshold
- id: symbol
  doc: 'Not Canonical nt will use symbol in the output (default: "-")'
  type: boolean
  inputBinding:
    prefix: --symbol
outputs: []
cwlVersion: v1.1
baseCommand:
- CanSNPs.pl
