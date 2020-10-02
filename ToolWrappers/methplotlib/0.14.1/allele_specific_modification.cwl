class: CommandLineTool
id: allele_specific_modification.cwl
inputs:
- id: in_bed
  doc: Bed file to aggregate modifications on.
  type: File
  inputBinding:
    prefix: --bed
- id: in_cut_off
  doc: 'FDR cutoff. Default: 0.05'
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_out
  doc: 'File to write results to. Default: stdout.'
  type: File
  inputBinding:
    prefix: --out
- id: in_methylation
  doc: Haplotype specific frequency files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- allele_specific_modification
