class: CommandLineTool
id: ../../../MotifRaptor_snpmotifradar.cwl
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
- id: snp_feature_file
  doc: SNP feature file, usually from step2
  type: string
  inputBinding:
    prefix: --snp_feature_file
- id: snp_motif_id
  doc: SNP motif pair-wise ID
  type: string
  inputBinding:
    prefix: --snp_motif_id
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpmotifradar
