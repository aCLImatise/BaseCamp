class: CommandLineTool
id: krakenhll_mpa_report.cwl
inputs:
- id: in_db
  doc: "Name of Kraken database\n(default: none)"
  type: string?
  inputBinding:
    prefix: --db
- id: in_show_zeros
  doc: Display taxa even if they lack a read in any sample
  type: boolean?
  inputBinding:
    prefix: --show-zeros
- id: in_header_line
  doc: "Display a header line indicating sample IDs\n(sample IDs are the filenames)"
  type: boolean?
  inputBinding:
    prefix: --header-line
- id: in_intermediate_ranks
  doc: Display taxa not at the standard ranks with x__ prefix
  type: boolean?
  inputBinding:
    prefix: --intermediate-ranks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- krakenhll-mpa-report
