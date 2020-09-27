class: CommandLineTool
id: superfocus_downloadDB.cwl
inputs:
- id: in_aligner
  doc: Aligner name separed by ',' if more than one
  type: string
  inputBinding:
    prefix: --aligner
- id: in_clusters
  doc: "DB types separed by ',' if more than one (e.g\n90,95,98,100) - default 90"
  type: long
  inputBinding:
    prefix: --clusters
- id: in_input
  doc: Target input files to be formatted into the database
  type: string
  inputBinding:
    prefix: --input
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- superfocus_downloadDB
