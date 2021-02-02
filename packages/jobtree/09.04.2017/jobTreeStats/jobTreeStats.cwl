class: CommandLineTool
id: jobTreeStats.cwl
inputs:
- id: in_tempdir_root
  doc: "Path to where temporary directory containing all temp\nfiles are created,\
    \ by default uses the current working\ndirectory as the base."
  type: File
  inputBinding:
    prefix: --tempDirRoot
- id: in_job_tree
  doc: "Directory containing the job tree. Can also be\nspecified as the single argument\
    \ to the script.\nDefault=./jobTree"
  type: Directory
  inputBinding:
    prefix: --jobTree
- id: in_output_file
  doc: File in which to write results
  type: File
  inputBinding:
    prefix: --outputFile
- id: in_raw
  doc: output the raw xml data.
  type: boolean
  inputBinding:
    prefix: --raw
- id: in_pretty
  doc: if not raw, prettify the numbers to be human readable.
  type: boolean
  inputBinding:
    prefix: --pretty
- id: in_categories
  doc: comma separated list from [time, clock, wait, memory]
  type: string
  inputBinding:
    prefix: --categories
- id: in_sort_category
  doc: "how to sort Target list. may be from [alpha, time,\nclock, wait, memory, count].\
    \ default=%(default)s"
  type: string
  inputBinding:
    prefix: --sortCategory
- id: in_sortfield
  doc: "how to sort Target list. may be from [min, med, ave,\nmax, total]. default=%(default)s"
  type: long
  inputBinding:
    prefix: --sortField
- id: in_sort_reverse
  doc: reverse sort order.
  type: boolean
  inputBinding:
    prefix: --sortReverse
- id: in_cache
  doc: stores a cache to speed up data display.
  type: boolean
  inputBinding:
    prefix: --cache
- id: in_logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logOff
- id: in_loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: in_log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: in_loglevel
  doc: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\n(default is CRITICAL)"
  type: string
  inputBinding:
    prefix: --logLevel
- id: in_log_file
  doc: File to log in
  type: File
  inputBinding:
    prefix: --logFile
- id: in_rotating_logging
  doc: "Turn on rotating logging, which prevents log files\ngetting too big.\n"
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: in_job_tree_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File in which to write results
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- jobTreeStats
