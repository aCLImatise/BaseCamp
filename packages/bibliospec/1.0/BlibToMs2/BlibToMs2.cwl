class: CommandLineTool
id: BlibToMs2.cwl
inputs:
- id: in_arg_name_output
  doc: "[ --file-name ] arg                Name the output ms2 file.  Default is\n\
    <library name>.ms2."
  type: File
  inputBinding:
    prefix: -f
- id: in_arg_precision_peak_mz
  doc: "[ --mz-precision ] arg (=2)        Precision for peak m/z printed to ms2.\n\
    Default 2."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_precision_peak_intensitiesdefault
  doc: "[ --intensity-precision ] arg (=1) Precision for peak intensities.\nDefault\
    \ 1."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_status_control
  doc: "[ --verbosity ] arg (=status)      Control the level of output to stderr.\n\
    (silent, error, status, warn, debug,\ndetail, all)  Default status."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_library
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_name_output
  doc: "[ --file-name ] arg                Name the output ms2 file.  Default is\n\
    <library name>.ms2."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_name_output)
cwlVersion: v1.1
baseCommand:
- BlibToMs2
