class: CommandLineTool
id: pbvalidate.cwl
inputs:
- id: in_log_file
  doc: "Write the log to file. Default(None) will write to\nstdout. (default: None)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: 'Set log level (default: CRITICAL)'
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: "Alias for setting log level to CRITICAL to suppress\noutput. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quick
  doc: "Limits validation to the first 100 records (plus file\nheader); equivalent\
    \ to --max-records=100 (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --quick
- id: in_max
  doc: "Exit after MAX_ERRORS have been recorded (DEFAULT:\ncheck entire file) (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --max
- id: in_max_records
  doc: "Exit after MAX_RECORDS have been inspected (DEFAULT:\ncheck entire file) (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --max-records
- id: in_type
  doc: "Use the specified file type instead of guessing\n(default: None)"
  type: string?
  inputBinding:
    prefix: --type
- id: in_index
  doc: 'Require index files (.fai or .pbi) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_strict
  doc: "Turn on additional validation, primarily for DataSet\nXML (default: False)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_x_unit_out
  doc: 'Xunit test results for Jenkins (default: None)'
  type: string?
  inputBinding:
    prefix: --xunit-out
- id: in_alarms
  doc: 'alarms.json for errors (default: None)'
  type: string?
  inputBinding:
    prefix: --alarms
- id: in_unaligned
  doc: "Specify that the file should contain only unmapped\nalignments (DEFAULT: no\
    \ requirement) (default: None)"
  type: boolean?
  inputBinding:
    prefix: --unaligned
- id: in_unmapped
  doc: 'Alias for --unaligned (default: None)'
  type: boolean?
  inputBinding:
    prefix: --unmapped
- id: in_aligned
  doc: "Specify that the file should contain only mapped\nalignments (DEFAULT: no\
    \ requirement) (default: None)"
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_mapped
  doc: 'Alias for --aligned (default: None)'
  type: boolean?
  inputBinding:
    prefix: --mapped
- id: in_contents
  doc: 'Enforce read type (default: None)'
  type: string?
  inputBinding:
    prefix: --contents
- id: in_reference
  doc: "Path to optional reference FASTA file, used for\nadditional validation of\
    \ mapped BAM records (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbvalidate
