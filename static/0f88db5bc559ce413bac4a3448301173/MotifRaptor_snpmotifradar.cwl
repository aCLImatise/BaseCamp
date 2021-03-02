class: CommandLineTool
id: MotifRaptor_snpmotifradar.cwl
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
- id: in_snp_feature_file
  doc: SNP feature file, usually from step2
  type: File?
  inputBinding:
    prefix: --snp_feature_file
- id: in_snp_motif_id
  doc: "SNP motif pair-wise ID\n"
  type: string?
  inputBinding:
    prefix: --snp_motif_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpmotifradar
