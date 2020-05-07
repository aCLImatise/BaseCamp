class: CommandLineTool
id: kraken_mpa_report.cwl
inputs:
- id: db
  doc: 'Name of Kraken database (default: none)'
  type: string
  inputBinding:
    prefix: --db
- id: show_zeros
  doc: Display taxa even if they lack a read in any sample
  type: boolean
  inputBinding:
    prefix: --show-zeros
- id: header_line
  doc: Display a header line indicating sample IDs (sample IDs are the filenames)
  type: boolean
  inputBinding:
    prefix: --header-line
- id: intermediate_ranks
  doc: Display taxa not at the standard ranks with x__ prefix
  type: boolean
  inputBinding:
    prefix: --intermediate-ranks
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken-mpa-report
