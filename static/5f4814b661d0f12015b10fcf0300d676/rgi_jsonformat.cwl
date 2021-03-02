class: CommandLineTool
id: rgi_jsonformat.cwl
inputs:
- id: in_in_file
  doc: input file must be in JSON format e.g Report.json
  type: File?
  inputBinding:
    prefix: --in_file
- id: in_out_file
  doc: "Output JSON file (default=ReportFormatted)\n"
  type: File?
  inputBinding:
    prefix: --out_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "Output JSON file (default=ReportFormatted)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgi_jsonformat
