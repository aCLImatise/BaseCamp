class: CommandLineTool
id: jobTreeKill.cwl
inputs:
- id: in_tempdir_root
  doc: "Path to where temporary directory containing all temp\nfiles are created,\
    \ by default uses the current working\ndirectory as the base."
  type: File?
  inputBinding:
    prefix: --tempDirRoot
- id: in_job_tree
  doc: Directory containing the job tree to kill
  type: Directory?
  inputBinding:
    prefix: --jobTree
- id: in_logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean?
  inputBinding:
    prefix: --logOff
- id: in_loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean?
  inputBinding:
    prefix: --logInfo
- id: in_log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean?
  inputBinding:
    prefix: --logDebug
- id: in_loglevel
  doc: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\n(default is CRITICAL)"
  type: string?
  inputBinding:
    prefix: --logLevel
- id: in_log_file
  doc: File to log in
  type: File?
  inputBinding:
    prefix: --logFile
- id: in_rotating_logging
  doc: "Turn on rotating logging, which prevents log files\ngetting too big.\n"
  type: boolean?
  inputBinding:
    prefix: --rotatingLogging
- id: in_job_tree_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_more
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jobTreeKill
