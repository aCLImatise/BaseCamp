class: CommandLineTool
id: allele_specific_modification.cwl
inputs:
- id: methylation
  doc: Haplotype specific frequency files.
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: Bed file to aggregate modifications on.
  type: string
  inputBinding:
    prefix: --bed
- id: cut_off
  doc: 'FDR cutoff. Default: 0.05'
  type: string
  inputBinding:
    prefix: --cutoff
- id: out
  doc: 'File to write results to. Default: stdout.'
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- allele_specific_modification
