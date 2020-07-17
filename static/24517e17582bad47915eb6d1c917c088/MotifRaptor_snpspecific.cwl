class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MotifRaptor_snpspecific.cwl
inputs:
- id: workdir
  doc: Working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: snp_motif_file
  doc: SNP motif pair-wise list File, usually from step2
  type: string
  inputBinding:
    prefix: --snp_motif_file
- id: snp_id
  doc: SNP id
  type: string
  inputBinding:
    prefix: --snp_id
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpspecific
