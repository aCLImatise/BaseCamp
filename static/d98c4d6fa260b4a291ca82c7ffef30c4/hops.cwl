class: CommandLineTool
id: hops.cwl
inputs:
- id: hops
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config_file
  doc: Path to Config File
  type: string
  inputBinding:
    prefix: --configFile
- id: input
  doc: Specify input directory or files valid option depend on mode
  type: string
  inputBinding:
    prefix: --input
- id: mode
  doc: HOPS Mode to run accpeted full, malt, maltex, post
  type: string
  inputBinding:
    prefix: --mode
- id: output
  doc: Specify out directory
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- hops
