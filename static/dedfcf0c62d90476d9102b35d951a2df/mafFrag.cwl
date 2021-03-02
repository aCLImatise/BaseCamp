class: CommandLineTool
id: mafFrag.cwl
inputs:
- id: in_out_name
  doc: Use XXX instead of database.chrom for the name
  type: string?
  inputBinding:
    prefix: -outName
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chrom
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_strand
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafFrag
