class: CommandLineTool
id: riboraptor_export_gene_coverages.cwl
inputs:
- id: in_bigwig
  doc: Path to bigwig  [required]
  type: File?
  inputBinding:
    prefix: --bigwig
- id: in_region_bed
  doc: Path to bed file  [required]
  type: File?
  inputBinding:
    prefix: --region_bed
- id: in_save_to
  doc: Path to write gene coverages tsv file
  type: File?
  inputBinding:
    prefix: --saveto
- id: in_offset_five_p
  doc: Number of upstream bases to count(5')
  type: long?
  inputBinding:
    prefix: --offset_5p
- id: in_offset_three_p
  doc: Number of downstream bases to count(3')
  type: long?
  inputBinding:
    prefix: --offset_3p
- id: in_ignore_tx_version
  doc: Ignore version (.xyz) in gene names
  type: boolean?
  inputBinding:
    prefix: --ignore_tx_version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- riboraptor
- export-gene-coverages
