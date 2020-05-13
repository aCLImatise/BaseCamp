class: CommandLineTool
id: taxonomy_filter_fastq.cwl
inputs:
- id: output_dir
  doc: Directory to deposited filtered output files in
  type: boolean
  inputBinding:
    prefix: --output_dir
- id: centrifuge
  doc: Filter using report from Centrifuge
  type: boolean
  inputBinding:
    prefix: --centrifuge
- id: kraken2
  doc: Filter using report from Kraken2
  type: boolean
  inputBinding:
    prefix: --kraken2
- id: ancestor_taxid
  doc: Name of ancestor to use as ancestor filter
  type: string
  inputBinding:
    prefix: --ancestor_taxid
- id: tax_dir
  doc: Directory containing the NCBI taxonomy nodes.dmp and names.dmp files
  type: string
  inputBinding:
    prefix: --taxdir
- id: tax_prefix
  doc: String to prepend to names of nodes.dmp and names.dmp
  type: string
  inputBinding:
    prefix: --tax_prefix
- id: tax_report_filename
  doc: Output from Kraken2 (default) or Centrifuge
  type: string
  inputBinding:
    prefix: --tax_report_filename
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_filter_fastq
