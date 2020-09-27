class: CommandLineTool
id: behst_download_data.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- behst-download-data.sh
