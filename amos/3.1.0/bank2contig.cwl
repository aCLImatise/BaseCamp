class: CommandLineTool
id: bank2contig.cwl
inputs:
- id: bank2contig
  doc: '[options]  <bank path>'
  type: string
  inputBinding:
    position: 0
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: e
  doc: Use EIDs for names (DEFAULT)
  type: boolean
  inputBinding:
    prefix: -e
- id: i
  doc: Use IIDs for names
  type: boolean
  inputBinding:
    prefix: -i
- id: e
  doc: Dump just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: i
  doc: Dump just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: l
  doc: Just create a layout file (no sequence)
  type: boolean
  inputBinding:
    prefix: -L
- id: s
  doc: Simple Layout style
  type: boolean
  inputBinding:
    prefix: -S
- id: s
  doc: SAM Format (http://samtools.sf.net)
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: XML Format suitable for DNPTrapper
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2contig
