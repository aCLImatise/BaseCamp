class: CommandLineTool
id: krakenuniq_report.cwl
inputs:
- id: in_show_zeros
  doc: Show full taxonomy table.
  type: boolean
  inputBinding:
    prefix: --show-zeros
- id: in_tax_on_counts
  doc: Input files are in the format '<taxon ID><tab><count>' instead of Kraken output.
  type: boolean
  inputBinding:
    prefix: --taxon-counts
- id: in_tax_on_list
  doc: Input files is list of taxon IDs instead of Kraken output.
  type: boolean
  inputBinding:
    prefix: --taxon-list
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- krakenuniq-report
