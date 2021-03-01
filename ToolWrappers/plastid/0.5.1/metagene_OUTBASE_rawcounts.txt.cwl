class: CommandLineTool
id: metagene_OUTBASE_rawcounts.txt.cwl
inputs:
- id: in_meta_gene
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metagene
- OUTBASE_rawcounts.txt
