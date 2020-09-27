class: CommandLineTool
id: behst_download_data.cwl
inputs:
- id: in_data
  doc: "Folder where to download the default data files\n(default $XDG_DATA_HOME/behst,\
    \ if set, or\n$HOME/.local/share/behst otherwise)"
  type: Directory
  inputBinding:
    prefix: --data
- id: in_small
  doc: "If activated, download only the minimal set of files\nto test BEHST functionality\
    \ (default files needed for\nvalid genomic set enrichment)"
  type: boolean
  inputBinding:
    prefix: --small
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- behst-download-data
