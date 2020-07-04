class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BlibToMs2.cwl
inputs:
- id: arg_name_output
  doc: '[ --file-name ] arg                Name the output ms2 file.  Default is  <library
    name>.ms2.'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_precision_peak
  doc: '[ --mz-precision ] arg (=2)        Precision for peak m/z printed to ms2.  Default
    2.'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_precision_default
  doc: '[ --intensity-precision ] arg (=1) Precision for peak intensities.   Default
    1.'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_status_control
  doc: '[ --verbosity ] arg (=status)      Control the level of output to stderr.  (silent,
    error, status, warn, debug,  detail, all)  Default status.'
  type: boolean
  inputBinding:
    prefix: -v
- id: library
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibToMs2
