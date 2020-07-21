class: CommandLineTool
id: ../../../linksBed.cwl
inputs:
- id: base
  doc: 'The browser basename.  Default: http://genome.ucsc.edu '
  type: boolean
  inputBinding:
    prefix: -base
- id: org
  doc: 'The organism. Default: human'
  type: boolean
  inputBinding:
    prefix: -org
- id: db
  doc: 'The build.  Default: hg18'
  type: boolean
  inputBinding:
    prefix: -db
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: links
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- linksBed
