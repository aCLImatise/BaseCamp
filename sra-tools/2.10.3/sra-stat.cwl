#!/usr/bin/env cwl-runner

baseCommand:
- sra-stat.2
class: CommandLineTool
cwlVersion: v1.0
id: sra-stat.2
inputs:
- doc: ''
  id: table
  inputBinding:
    position: 0
  type: string
- doc: 'output as XML, default is text '
  id: xml
  inputBinding:
    prefix: --xml
  type: boolean
- doc: 'starting spot id, default is 1 '
  id: start
  inputBinding:
    prefix: --start
  type: string
- doc: 'ending spot id, default is max '
  id: stop
  inputBinding:
    prefix: --stop
  type: string
- doc: 'print load metadata '
  id: meta
  inputBinding:
    prefix: --meta
  type: boolean
- doc: 'quick mode: get statistics from metadata; do  not scan the table '
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
- doc: '<on | off>        print member stats, default is on '
  id: member_stats
  inputBinding:
    prefix: --member-stats
  type: boolean
- doc: 'output archive info, default is off '
  id: archive_info
  inputBinding:
    prefix: --archive-info
  type: boolean
- doc: 'calculate READ_LEN average and standard  deviation '
  id: statistics
  inputBinding:
    prefix: --statistics
  type: boolean
- doc: '<on | off>        print alignment info, default is on '
  id: alignment
  inputBinding:
    prefix: --alignment
  type: boolean
- doc: 'show the percentage of completion '
  id: show_progress
  inputBinding:
    prefix: --show_progress
  type: boolean
- doc: 'path to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'produce XML-formatted log file '
  id: xml_log
  inputBinding:
    prefix: --xml-log
  type: string
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
