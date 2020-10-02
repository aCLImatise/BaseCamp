class: CommandLineTool
id: linksBed.cwl
inputs:
- id: in_base
  doc: 'The browser basename.  Default: http://genome.ucsc.edu'
  type: boolean
  inputBinding:
    prefix: -base
- id: in_org
  doc: 'The organism. Default: human'
  type: boolean
  inputBinding:
    prefix: -org
- id: in_db
  doc: 'The build.  Default: hg18'
  type: boolean
  inputBinding:
    prefix: -db
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_links
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- linksBed
