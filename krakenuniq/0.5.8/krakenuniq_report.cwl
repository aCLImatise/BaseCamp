class: CommandLineTool
id: krakenuniq_report.cwl
inputs:
- id: show_zeros
  doc: Show full taxonomy table.
  type: boolean
  inputBinding:
    prefix: --show-zeros
- id: tax_on_counts
  doc: Input files are in the format '<taxon ID><tab><count>' instead of Kraken output.
  type: boolean
  inputBinding:
    prefix: --taxon-counts
- id: tax_on_list
  doc: Input files is list of taxon IDs instead of Kraken output.
  type: boolean
  inputBinding:
    prefix: --taxon-list
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenuniq-report
