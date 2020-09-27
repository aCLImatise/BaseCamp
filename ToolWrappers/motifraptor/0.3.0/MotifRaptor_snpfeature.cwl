class: CommandLineTool
id: MotifRaptor_snpfeature.cwl
inputs:
- id: in_workdir
  doc: Working directory
  type: Directory
  inputBinding:
    prefix: --workdir
- id: in_cell_type
  doc: Cell type or Tissue type ID
  type: string
  inputBinding:
    prefix: --cell_type
- id: in_snp_bed_files
  doc: "SNP cell type bed file folder, usually from step1\n"
  type: File
  inputBinding:
    prefix: --snp_bed_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpfeature
