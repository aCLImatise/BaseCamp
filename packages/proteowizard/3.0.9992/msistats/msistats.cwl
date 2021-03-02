class: CommandLineTool
id: msistats.cwl
inputs:
- id: in_arg_windows_use
  doc: '[ --mz ] arg (=5)    : Windows to use for finding nearest time neighbor.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_window_use
  doc: '[ --time ] arg (=10) : Window to use for finding nearest mz neighbors'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_name_write
  doc: '[ --out ] arg        : Name of file to write output to.'
  type: File?
  inputBinding:
    prefix: -o
- id: in__be_verbose
  doc: '[ --verbose ]        : Be verbose.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_pm_z
  doc: ": width for empty pixel analysis. Otherwise set to mz\noption value"
  type: string?
  inputBinding:
    prefix: --pmz
- id: in_p_time
  doc: ": width for empty pixel analysis. Otherwise set to time\noption value\n"
  type: string?
  inputBinding:
    prefix: --ptime
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_name_write
  doc: '[ --out ] arg        : Name of file to write output to.'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_name_write)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- msistats
