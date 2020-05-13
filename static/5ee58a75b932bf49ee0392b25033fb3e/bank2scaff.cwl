class: CommandLineTool
id: bank2scaff.cwl
inputs:
- id: bank2scaff
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
  doc: Print just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: i
  doc: Print just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: u
  doc: Show the ungapped contig lengths in the scaff file
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: Create a Arachne links file
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: Print the scaffold consensus sequences in multi-fasta format
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: Use the estimated gaps size to space contigs
  type: boolean
  inputBinding:
    prefix: -g
- id: j
  doc: Join contigs spaced by less than 2 bp (needs -f, if G provided overrides 2)
  type: boolean
  inputBinding:
    prefix: -j
- id: g
  doc: Gaps < val will have val N's between them (-g)
  type: string
  inputBinding:
    prefix: -G
- id: n
  doc: Specify number of N's to place between contigs
  type: string
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2scaff
