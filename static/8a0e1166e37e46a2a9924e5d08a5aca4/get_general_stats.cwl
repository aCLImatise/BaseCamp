class: CommandLineTool
id: get_general_stats.pl.cwl
inputs:
- id: g
  doc: ': Input files are gtf not lists'
  type: boolean
  inputBinding:
    prefix: -g
- id: q
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: a
  doc: ': Do not get stats for alternative splices. (Faster)'
  type: boolean
  inputBinding:
    prefix: -A
- id: v
  doc: ': Verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- get_general_stats.pl
