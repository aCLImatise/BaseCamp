class: CommandLineTool
id: download_ncbi_taxa.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- download-ncbi-taxa.sh
