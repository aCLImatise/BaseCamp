class: CommandLineTool
id: ../../../pbvalidate.cwl
inputs:
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: CRITICAL)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quick
  doc: 'Limits validation to the first 100 records (plus file header); equivalent
    to --max-records=100 (default: False)'
  type: boolean
  inputBinding:
    prefix: --quick
- id: max
  doc: 'Exit after MAX_ERRORS have been recorded (DEFAULT: check entire file) (default:
    None)'
  type: long
  inputBinding:
    prefix: --max
- id: max_records
  doc: 'Exit after MAX_RECORDS have been inspected (DEFAULT: check entire file) (default:
    None)'
  type: long
  inputBinding:
    prefix: --max-records
- id: type
  doc: 'Use the specified file type instead of guessing (default: None)'
  type: string
  inputBinding:
    prefix: --type
- id: index
  doc: 'Require index files (.fai or .pbi) (default: False)'
  type: boolean
  inputBinding:
    prefix: --index
- id: strict
  doc: 'Turn on additional validation, primarily for DataSet XML (default: False)'
  type: boolean
  inputBinding:
    prefix: --strict
- id: x_unit_out
  doc: 'Xunit test results for Jenkins (default: None)'
  type: string
  inputBinding:
    prefix: --xunit-out
- id: alarms
  doc: 'alarms.json for errors (default: None)'
  type: string
  inputBinding:
    prefix: --alarms
- id: unaligned
  doc: 'Specify that the file should contain only unmapped alignments (DEFAULT: no
    requirement) (default: None)'
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: unmapped
  doc: 'Alias for --unaligned (default: None)'
  type: boolean
  inputBinding:
    prefix: --unmapped
- id: aligned
  doc: 'Specify that the file should contain only mapped alignments (DEFAULT: no requirement)
    (default: None)'
  type: boolean
  inputBinding:
    prefix: --aligned
- id: mapped
  doc: 'Alias for --aligned (default: None)'
  type: boolean
  inputBinding:
    prefix: --mapped
- id: contents
  doc: 'Enforce read type (default: None)'
  type: string
  inputBinding:
    prefix: --contents
- id: reference
  doc: 'Path to optional reference FASTA file, used for additional validation of mapped
    BAM records (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: file
  doc: BAM, FASTA, or DataSet XML file
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbvalidate
