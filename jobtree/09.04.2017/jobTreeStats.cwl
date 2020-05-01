#!/usr/bin/env cwl-runner

baseCommand:
- jobTreeStats
class: CommandLineTool
cwlVersion: v1.0
id: jobtreestats
inputs:
- doc: ''
  id: job_tree_dir
  inputBinding:
    position: 0
  type: string
- doc: Turn off logging. (default is CRITICAL)
  id: logoff
  inputBinding:
    prefix: --logOff
  type: boolean
- doc: Turn on logging at INFO level. (default is CRITICAL)
  id: loginfo
  inputBinding:
    prefix: --logInfo
  type: boolean
- doc: Turn on logging at DEBUG level. (default is CRITICAL)
  id: log_debug
  inputBinding:
    prefix: --logDebug
  type: boolean
- doc: Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)
  id: loglevel
  inputBinding:
    prefix: --logLevel
  type: string
- doc: File to log in
  id: log_file
  inputBinding:
    prefix: --logFile
  type: string
- doc: Turn on rotating logging, which prevents log files getting too big.
  id: rotating_logging
  inputBinding:
    prefix: --rotatingLogging
  type: boolean
