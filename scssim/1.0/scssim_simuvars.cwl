class: CommandLineTool
id: scssim_simuvars.cwl
inputs:
- id: ref
  doc: reference file (.fasta)
  type: string
  inputBinding:
    prefix: --ref
- id: snp
  doc: SNP file containing the SNPs to be simulated [Default:null]
  type: string
  inputBinding:
    prefix: --snp
- id: var
  doc: variation file containing the genomic variations to be simulated [Default:null]
  type: string
  inputBinding:
    prefix: --var
- id: output
  doc: output file (.fasta) to save generated sequences
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- scssim
- simuvars
