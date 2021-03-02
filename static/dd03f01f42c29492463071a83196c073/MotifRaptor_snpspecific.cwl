class: CommandLineTool
id: MotifRaptor_snpspecific.cwl
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
- id: in_snp_id
  doc: "SNP id\n"
  type: string?
  inputBinding:
    prefix: --snp_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpspecific
