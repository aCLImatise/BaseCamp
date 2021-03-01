class: CommandLineTool
id: test_gzip.py.cwl
inputs:
- id: in_block_size
  doc: "The size of blocks for reading and writing (default:\n4k)"
  type: long?
  inputBinding:
    prefix: --blocksize
- id: in_num_iterations
  doc: 'The number of iterations (default: 30)'
  type: long?
  inputBinding:
    prefix: --num-iterations
- id: in_log_file
  doc: "This option specifies a file to which logging\nstatements will be written\
    \ (in addition to stdout and\nstderr, if specified) (default: )"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_stdout
  doc: "If this flag is present, then logging statements will\nbe written to stdout\
    \ (in addition to a file and\nstderr, if specified) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --log-stdout
- id: in_no_log_stderr
  doc: "Unless this flag is present, then logging statements\nwill be written to stderr\
    \ (in addition to a file and\nstdout, if specified) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-log-stderr
- id: in_logging_level
  doc: "If this value is specified, then it will be used for\nall logs (default: WARNING)"
  type: string?
  inputBinding:
    prefix: --logging-level
- id: in_file_logging_level
  doc: "The logging level to be used for the log file, if\nspecified. This option\
    \ overrides --logging-level.\n(default: NOTSET)"
  type: string?
  inputBinding:
    prefix: --file-logging-level
- id: in_stdout_logging_level
  doc: "The logging level to be used for the stdout log, if\nspecified. This option\
    \ overrides --logging-level.\n(default: NOTSET)"
  type: string?
  inputBinding:
    prefix: --stdout-logging-level
- id: in_stderr_logging_level
  doc: "The logging level to be used for the stderr log, if\nspecified. This option\
    \ overrides --logging-level.\n(default: NOTSET)\n"
  type: string?
  inputBinding:
    prefix: --stderr-logging-level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- test_gzip.py
