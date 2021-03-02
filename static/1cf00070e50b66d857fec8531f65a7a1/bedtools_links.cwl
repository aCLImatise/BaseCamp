class: CommandLineTool
id: bedtools_links.cwl
inputs:
- id: in_base
  doc: 'The browser basename.  Default: http://genome.ucsc.edu'
  type: boolean?
  inputBinding:
    prefix: -base
- id: in_org
  doc: 'The organism. Default: human'
  type: boolean?
  inputBinding:
    prefix: -org
- id: in_db
  doc: 'The build.  Default: hg18'
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bedtools
- links
