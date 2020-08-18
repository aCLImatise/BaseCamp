class: CommandLineTool
id: ../../../superfocus_downloadDB.cwl
inputs:
- id: aligner
  doc: Aligner name separed by ',' if more than one
  type: string
  inputBinding:
    prefix: --aligner
- id: clusters
  doc: DB types separed by ',' if more than one (e.g 90,95,98,100) - default 90
  type: string
  inputBinding:
    prefix: --clusters
- id: input
  doc: Target input files to be formatted into the database
  type: string
  inputBinding:
    prefix: --input
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- superfocus_downloadDB
