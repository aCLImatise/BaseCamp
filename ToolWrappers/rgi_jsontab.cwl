class: CommandLineTool
id: rgi_jsontab.cwl
inputs:
- id: in_a_file
  doc: "must be a json file generated from RGI in JSON or gzip\nformat e.g out.json,\
    \ out.json.gz"
  type: File
  inputBinding:
    prefix: --afile
- id: in_out_file
  doc: Output Tab-delimited file (default=dataSummary)
  type: File
  inputBinding:
    prefix: --out_file
- id: in_verbose
  doc: "include help menu. Options are OFF or ON (default =\nOFF for no help)\n"
  type: string
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_a_file
  doc: "must be a json file generated from RGI in JSON or gzip\nformat e.g out.json,\
    \ out.json.gz"
  type: File
  outputBinding:
    glob: $(inputs.in_a_file)
- id: out_out_file
  doc: Output Tab-delimited file (default=dataSummary)
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- rgi_jsontab
