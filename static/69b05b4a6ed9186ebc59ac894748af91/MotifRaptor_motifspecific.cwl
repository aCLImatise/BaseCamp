class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MotifRaptor_motifspecific.cwl
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
- id: motif_id
  doc: motif id with name, in the format of motifID__NAME
  type: string
  inputBinding:
    prefix: --motif_id
- id: bg_score_folder
  doc: background score folder, usually from step2
  type: string
  inputBinding:
    prefix: --bg_score_folder
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- motifspecific
