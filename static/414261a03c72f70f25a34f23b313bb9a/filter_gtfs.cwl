class: CommandLineTool
id: filter_gtfs.pl.cwl
inputs:
- id: f
  doc: ': List filter types'
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: ': Inputs are gtf files instead of list files'
  type: boolean
  inputBinding:
    prefix: -g
- id: a
  doc: ': Do not check for alternative splices. (Faster)'
  type: boolean
  inputBinding:
    prefix: -A
- id: q
  doc: ': Quick load the gtf file.  Do not check them for errors.  '
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_gtfs.pl
