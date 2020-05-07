class: CommandLineTool
id: bedtools_links.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- links
