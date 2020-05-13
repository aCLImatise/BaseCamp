class: CommandLineTool
id: BlibFilter.cwl
inputs:
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
- id: m
  doc: '[ --memory-cache ] arg (=250)  SQLite memory cache size in Megs.  Default  250M.'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --min-peaks ] arg (=1)       Only include spectra with at least this  many
    peaks.  Default 1.'
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: '[ --min-score ] arg (=0)       Best spectrum must have at least this  average
    score to be included.  Default 0.'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: '[ --best-scoring ] arg (=0)    Description of option.  Default false.'
  type: boolean
  inputBinding:
    prefix: -b
- id: p
  doc: '[ --parameter-file ] arg       File containing search parameters.  Command
    line values override file values.'
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: '[ --verbosity ] arg (=status)  Control the level of output to stderr.  (silent,
    error, status, warn, debug,  detail, all)  Default status.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibFilter
