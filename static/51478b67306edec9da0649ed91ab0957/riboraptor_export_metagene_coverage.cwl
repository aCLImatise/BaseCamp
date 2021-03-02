class: CommandLineTool
id: riboraptor_export_metagene_coverage.cwl
inputs:
- id: in_bigwig
  doc: Path to bigwig  [required]
  type: File?
  inputBinding:
    prefix: --bigwig
- id: in_region_bed
  doc: "Path to bed file or a genome name (hg38_utr5,\nhg38_cds, hg38_utr3)  [required]"
  type: File?
  inputBinding:
    prefix: --region_bed
- id: in_save_to
  doc: Path to write metagene coverage tsv file
  type: File?
  inputBinding:
    prefix: --saveto
- id: in_max_positions
  doc: maximum positions to count
  type: long?
  inputBinding:
    prefix: --max_positions
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
- export-metagene-coverage
