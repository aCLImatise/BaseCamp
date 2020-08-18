class: CommandLineTool
id: ../../../msistats.cwl
inputs:
- id: arg_windows_use
  doc: '[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor.'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_window_use
  doc: '[ --time ] arg (=10) : Window to use for finding nearest mz neighbors'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_name_write
  doc: '[ --out ] arg        : Name of file to write output to. '
  type: boolean
  inputBinding:
    prefix: -o
- id: _be_verbose
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
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- msistats
