class: CommandLineTool
id: kreport2mpa.py.cwl
inputs:
- id: in_report_file
  doc: Input kraken report file for converting
  type: File?
  inputBinding:
    prefix: --report-file
- id: in_output
  doc: Output mpa-report file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_display_header
  doc: Include header [Kraken report filename] in mpa-report
  type: boolean?
  inputBinding:
    prefix: --display-header
- id: in_no_intermediate_ranks
  doc: "Do not include non-traditional taxonomic ranks in\noutput\n"
  type: boolean?
  inputBinding:
    prefix: --no-intermediate-ranks
- id: in_file
  doc: --intermediate-ranks  Include non-traditional taxonomic ranks in output
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output mpa-report file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- kreport2mpa.py
