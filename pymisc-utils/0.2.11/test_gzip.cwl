#!/usr/bin/env cwl-runner

baseCommand:
- test_gzip.py
class: CommandLineTool
cwlVersion: v1.0
id: test_gzip.py
inputs:
- doc: The size of the random binary file
  id: size
  inputBinding:
    position: 0
  type: long
- doc: 'This option specifies a file to which logging statements will be written (in
    addition to stdout and stderr, if specified) (default: )'
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: 'If this flag is present, then logging statements will be written to stdout
    (in addition to a file and stderr, if specified) (default: False)'
  id: log_stdout
  inputBinding:
    prefix: --log-stdout
  type: boolean
- doc: 'Unless this flag is present, then logging statements will be written to stderr
    (in addition to a file and stdout, if specified) (default: False)'
  id: no_log_stderr
  inputBinding:
    prefix: --no-log-stderr
  type: boolean
- doc: 'If this value is specified, then it will be used for all logs (default: WARNING)'
  id: logging_level
  inputBinding:
    prefix: --logging-level
  type: string
- doc: 'The logging level to be used for the log file, if specified. This option overrides
    --logging-level. (default: NOTSET)'
  id: file_logging_level
  inputBinding:
    prefix: --file-logging-level
  type: string
- doc: 'The logging level to be used for the stdout log, if specified. This option
    overrides --logging-level. (default: NOTSET)'
  id: stdout_logging_level
  inputBinding:
    prefix: --stdout-logging-level
  type: string
- doc: 'The logging level to be used for the stderr log, if specified. This option
    overrides --logging-level. (default: NOTSET)'
  id: stderr_logging_level
  inputBinding:
    prefix: --stderr-logging-level
  type: string
