class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_links.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- links
