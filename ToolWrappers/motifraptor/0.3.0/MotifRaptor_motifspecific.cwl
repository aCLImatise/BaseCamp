class: CommandLineTool
id: MotifRaptor_motifspecific.cwl
inputs:
- id: in_workdir
  doc: Working directory
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_snp_motif_file
  doc: SNP motif pair-wise list File, usually from step2
  type: File?
  inputBinding:
    prefix: --snp_motif_file
- id: in_motif_id
  doc: motif id with name, in the format of motifID__NAME
  type: string?
  inputBinding:
    prefix: --motif_id
- id: in_bg_score_folder
  doc: "background score folder, usually from step2\n"
  type: Directory?
  inputBinding:
    prefix: --bg_score_folder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- motifspecific
