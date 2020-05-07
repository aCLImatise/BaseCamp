class: CommandLineTool
id: sra_stat.2.cwl
inputs:
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: xml
  doc: 'output as XML, default is text '
  type: boolean
  inputBinding:
    prefix: --xml
- id: start
  doc: 'starting spot id, default is 1 '
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: 'ending spot id, default is max '
  type: string
  inputBinding:
    prefix: --stop
- id: meta
  doc: 'print load metadata '
  type: boolean
  inputBinding:
    prefix: --meta
- id: quick
  doc: 'quick mode: get statistics from metadata; do  not scan the table '
  type: boolean
  inputBinding:
    prefix: --quick
- id: member_stats
  doc: '<on | off>        print member stats, default is on '
  type: boolean
  inputBinding:
    prefix: --member-stats
- id: archive_info
  doc: 'output archive info, default is off '
  type: boolean
  inputBinding:
    prefix: --archive-info
- id: statistics
  doc: 'calculate READ_LEN average and standard  deviation '
  type: boolean
  inputBinding:
    prefix: --statistics
- id: alignment
  doc: '<on | off>        print alignment info, default is on '
  type: boolean
  inputBinding:
    prefix: --alignment
- id: show_progress
  doc: 'show the percentage of completion '
  type: boolean
  inputBinding:
    prefix: --show_progress
- id: ngc
  doc: 'path to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: xml_log
  doc: 'produce XML-formatted log file '
  type: string
  inputBinding:
    prefix: --xml-log
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sra-stat.2
