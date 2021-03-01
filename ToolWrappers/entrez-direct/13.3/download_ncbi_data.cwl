class: CommandLineTool
id: download_ncbi_data.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- download-ncbi-data
