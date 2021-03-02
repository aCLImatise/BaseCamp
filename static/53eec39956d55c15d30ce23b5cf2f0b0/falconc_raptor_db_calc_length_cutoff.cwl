class: CommandLineTool
id: falconc_raptor_db_calc_length_cutoff.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__rdbfn_string
  doc: =, --rdb-fn=       string  "rawreads.db"  set rdb_fn
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__genomesize_int
  doc: =, --genome-size=  int64   4600000        set genome_size
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_coverage_float_set
  doc: =, --coverage=     float   30.0           set coverage
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_fail_low_cov
  doc: "bool    false          Exit non-zero if the input\ncoverage was insufficient\
    \ to\nsatisfy the requirement."
  type: boolean?
  inputBinding:
    prefix: --fail-low-cov
- id: in__alarmsfn_string
  doc: "=, --alarms-fn=    string  \"\"             Optional JSON file to write SMRT\n\
    Link alarms. (typically used w/\n-f)\n"
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- raptor-db-calc-length-cutoff
