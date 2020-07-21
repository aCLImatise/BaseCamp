class: CommandLineTool
id: ../../../jobTreeStats.cwl
inputs:
- id: logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logOff
- id: loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: loglevel
  doc: Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)
  type: string
  inputBinding:
    prefix: --logLevel
- id: log_file
  doc: File to log in
  type: string
  inputBinding:
    prefix: --logFile
- id: rotating_logging
  doc: Turn on rotating logging, which prevents log files getting too big.
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: job_tree
  doc: ''
  type: boolean
  inputBinding:
    prefix: --jobTree
- id: job_tree_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- jobTreeStats
