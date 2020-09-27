class: CommandLineTool
id: gff3ToPsl.cwl
inputs:
- id: in_drop_q
  doc: drop record when query not found in queryChromSizes
  type: boolean
  inputBinding:
    prefix: -dropQ
- id: in_dropt
  doc: drop record when target not found in targetChromSizes
  type: boolean
  inputBinding:
    prefix: -dropT
- id: in_in_gff_three
  doc: GFF3 formatted file with Gap attribute in match records
  type: long
  inputBinding:
    position: 0
- id: in_out_dot_psl
  doc: PSL formatted output
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gff3ToPsl
