class: CommandLineTool
id: ivar_getmasked.cwl
inputs:
- id: i
  doc: (Required) Input filtered variants tsv generated from `ivar filtervariants`
  type: boolean
  inputBinding:
    prefix: -i
- id: b
  doc: (Required) BED file with primer sequences and positions
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: (Required) Primer pair information file containing left and right primer names
    for the same amplicon separated by a tab
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: (Required) Prefix for the output text file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- getmasked
