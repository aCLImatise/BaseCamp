class: CommandLineTool
id: combine_kreports.py.cwl
inputs:
- id: in_report_files
  doc: "Input kraken report files to combine (separate by\nspaces)"
  type: string[]
  inputBinding:
    prefix: --report-files
- id: in_output
  doc: Output kraken report file with combined information
  type: File?
  inputBinding:
    prefix: --output
- id: in_display_headers
  doc: Include header lines
  type: boolean?
  inputBinding:
    prefix: --display-headers
- id: in_no_headers
  doc: Do not include header lines
  type: boolean?
  inputBinding:
    prefix: --no-headers
- id: in_sample_names
  doc: Sample names to use as headers in the new report
  type: string[]
  inputBinding:
    prefix: --sample-names
- id: in_only_combined
  doc: "Include only the total combined reads column, not the\nindividual sample cols\n"
  type: boolean?
  inputBinding:
    prefix: --only-combined
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output kraken report file with combined information
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- combine_kreports.py
