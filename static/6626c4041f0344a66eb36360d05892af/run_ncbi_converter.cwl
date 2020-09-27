class: CommandLineTool
id: run_ncbi_converter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-ncbi-converter
