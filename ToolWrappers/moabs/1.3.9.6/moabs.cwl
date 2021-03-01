class: CommandLineTool
id: moabs.cwl
inputs:
- id: in_str_input_files
  doc: <str>   input files.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_cf
  doc: <str>   configuration file.
  type: boolean?
  inputBinding:
    prefix: --cf
- id: in_def
  doc: <str>   overwrite definitions in configuration file. --def key=value
  type: boolean?
  inputBinding:
    prefix: --def
- id: in_boleen_verbose_output
  doc: <boleen>        verbose output  [0 or 1, default 0]
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_d_sun_at_tamu_dot_edu
  doc: 'Usage : /usr/local/bin/moabs [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- moabs
