class: CommandLineTool
id: BlibFilter.cwl
inputs:
- id: in_arg_sqlite_memory
  doc: '[ --memory-cache ] arg (=250)  SQLite memory cache size in Megs.  Default'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_best_spectrum
  doc: "[ --min-score ] arg (=0)       Best spectrum must have at least this\naverage\
    \ score to be included.  Default 0."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_description_option
  doc: '[ --best-scoring ] arg (=0)    Description of option.  Default false.'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_arg_file_containing
  doc: "[ --parameter-file ] arg       File containing search parameters.  Command\n\
    line values override file values."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_status_control
  doc: "[ --verbosity ] arg (=status)  Control the level of output to stderr.\n(silent,\
    \ error, status, warn, debug,\ndetail, all)  Default status."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_two_five_zero_mdot
  doc: '-n [ --min-peaks ] arg (=1)       Only include spectra with at least this '
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- BlibFilter
