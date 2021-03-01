class: CommandLineTool
id: download_uniprot_taxa.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- download-uniprot-taxa.sh
