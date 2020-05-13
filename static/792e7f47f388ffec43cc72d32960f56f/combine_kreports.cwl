class: CommandLineTool
id: combine_kreports.py.cwl
inputs:
- id: report_files
  doc: Input kraken report files to combine (separate by spaces)
  type: string[]
  inputBinding:
    prefix: --report-files
- id: output
  doc: Output kraken report file with combined information
  type: string
  inputBinding:
    prefix: --output
- id: display_headers
  doc: Include header lines
  type: boolean
  inputBinding:
    prefix: --display-headers
- id: no_headers
  doc: Do not include header lines
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: sample_names
  doc: Sample names to use as headers in the new report
  type: string[]
  inputBinding:
    prefix: --sample-names
- id: only_combined
  doc: Include only the total combined reads column, not the individual sample cols
  type: boolean
  inputBinding:
    prefix: --only-combined
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_kreports.py
