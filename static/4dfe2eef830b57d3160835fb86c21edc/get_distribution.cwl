class: CommandLineTool
id: get_distribution.pl.cwl
inputs:
- id: g
  doc: ': Inputs are gtf files instead of list files'
  type: boolean
  inputBinding:
    prefix: -g
- id: q
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- get_distribution.pl
