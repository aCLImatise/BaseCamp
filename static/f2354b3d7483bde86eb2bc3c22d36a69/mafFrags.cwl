class: CommandLineTool
id: mafFrags.cwl
inputs:
- id: in_orgs
  doc: '- File with list of databases/organisms in order'
  type: File?
  inputBinding:
    prefix: -orgs
- id: in_be_done_two
  doc: '- If set, in.bed is a bed 12 file, including exons'
  type: boolean?
  inputBinding:
    prefix: -bed12
- id: in_thick_only
  doc: '- Only extract subset between thickStart/thickEnd'
  type: boolean?
  inputBinding:
    prefix: -thickOnly
- id: in_me_first
  doc: '- Put native sequence first in maf'
  type: boolean?
  inputBinding:
    prefix: -meFirst
- id: in_tx_starts
  doc: "- Add MAF txstart region definitions ('r' lines) using BED name\nand output\
    \ actual reference genome coordinates in MAF."
  type: boolean?
  inputBinding:
    prefix: -txStarts
- id: in_ref_coords
  doc: '- output actual reference genome coordinates in MAF.'
  type: boolean?
  inputBinding:
    prefix: -refCoords
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafFrags
