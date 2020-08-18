class: CommandLineTool
id: ../../../BlibFilter.cwl
inputs:
- id: arg_sqlite_size
  doc: '[ --memory-cache ] arg (=250)  SQLite memory cache size in Megs.  Default  250M.'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_only_include
  doc: '[ --min-peaks ] arg (=1)       Only include spectra with at least this  many
    peaks.  Default 1.'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_best_spectrum
  doc: '[ --min-score ] arg (=0)       Best spectrum must have at least this  average
    score to be included.  Default 0.'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_description_option
  doc: '[ --best-scoring ] arg (=0)    Description of option.  Default false.'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_file_containing
  doc: '[ --parameter-file ] arg       File containing search parameters.  Command
    line values override file values.'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_status_control
  doc: '[ --verbosity ] arg (=status)  Control the level of output to stderr.  (silent,
    error, status, warn, debug,  detail, all)  Default status.'
  type: boolean
  inputBinding:
    prefix: -v
- id: redundant_library
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filtered_library
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibFilter
