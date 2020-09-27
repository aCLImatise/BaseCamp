class: CommandLineTool
id: sra_stat.2.10.8.cwl
inputs:
- id: in_xml
  doc: output as XML, default is text
  type: boolean
  inputBinding:
    prefix: --xml
- id: in_start
  doc: starting spot id, default is 1
  type: long
  inputBinding:
    prefix: --start
- id: in_stop
  doc: ending spot id, default is max
  type: long
  inputBinding:
    prefix: --stop
- id: in_meta
  doc: print load metadata
  type: boolean
  inputBinding:
    prefix: --meta
- id: in_quick
  doc: "quick mode: get statistics from metadata; do\nnot scan the table"
  type: boolean
  inputBinding:
    prefix: --quick
- id: in_member_stats
  doc: print member stats, default is on
  type: string
  inputBinding:
    prefix: --member-stats
- id: in_archive_info
  doc: output archive info, default is off
  type: boolean
  inputBinding:
    prefix: --archive-info
- id: in_statistics
  doc: calculate READ_LEN average and standard
  type: boolean
  inputBinding:
    prefix: --statistics
- id: in_show_progress
  doc: show the percentage of completion
  type: boolean
  inputBinding:
    prefix: --show_progress
- id: in_ngc
  doc: path to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: in_xml_log
  doc: produce XML-formatted log file
  type: File
  inputBinding:
    prefix: --xml-log
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_deviation
  doc: '-a|--alignment <on | off>        print alignment info, default is on '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: 'sra-stat.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sra-stat.2.10.8
