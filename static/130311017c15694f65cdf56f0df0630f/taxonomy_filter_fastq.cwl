class: CommandLineTool
id: taxonomy_filter_fastq.cwl
inputs:
- id: in_output_dir
  doc: Directory to deposited filtered output files in
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_centrifuge
  doc: Filter using report from Centrifuge
  type: boolean?
  inputBinding:
    prefix: --centrifuge
- id: in_kraken_two
  doc: Filter using report from Kraken2
  type: boolean?
  inputBinding:
    prefix: --kraken2
- id: in_ancestor_taxid
  doc: Name of ancestor to use as ancestor filter
  type: string?
  inputBinding:
    prefix: --ancestor_taxid
- id: in_db
  doc: URL for SQLite taxonomy database
  type: string?
  inputBinding:
    prefix: --db
- id: in_tax_report_filename
  doc: Output from Kraken2 (default) or Centrifuge
  type: File?
  inputBinding:
    prefix: --tax_report_filename
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to deposited filtered output files in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- taxonomy_filter_fastq
