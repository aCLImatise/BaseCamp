class: CommandLineTool
id: mp3treesim.cwl
inputs:
- id: tree
  doc: Paths to the trees
  type: string
  inputBinding:
    position: 0
- id: i
  doc: Run MP3-treesim in Intersection mode.
  type: boolean
  inputBinding:
    prefix: -i
- id: u
  doc: Run MP3-treesim in Union mode.
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: Run MP3-treesim in Geometric mode.
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- mp3treesim
