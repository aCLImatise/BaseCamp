class: CommandLineTool
id: msistats.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: m
  doc: '[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor.'
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: '[ --time ] arg (=10) : Window to use for finding nearest mz neighbors'
  type: boolean
  inputBinding:
    prefix: -t
- id: o
  doc: '[ --out ] arg        : Name of file to write output to. '
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: '[ --verbose ]        : Be verbose.'
  type: boolean
  inputBinding:
    prefix: -v
- id: pm_z
  doc: ': width for empty pixel analysis. Otherwise set to mz  option value'
  type: string
  inputBinding:
    prefix: --pmz
- id: p_time
  doc: ': width for empty pixel analysis. Otherwise set to time option value'
  type: string
  inputBinding:
    prefix: --ptime
outputs: []
cwlVersion: v1.1
baseCommand:
- msistats
