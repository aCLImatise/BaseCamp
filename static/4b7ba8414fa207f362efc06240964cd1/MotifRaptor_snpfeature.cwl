class: CommandLineTool
id: ../../../MotifRaptor_snpfeature.cwl
inputs:
- id: workdir
  doc: Working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: cell_type
  doc: Cell type or Tissue type ID
  type: string
  inputBinding:
    prefix: --cell_type
- id: snp_bed_files
  doc: SNP cell type bed file folder, usually from step1
  type: string
  inputBinding:
    prefix: --snp_bed_files
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpfeature
