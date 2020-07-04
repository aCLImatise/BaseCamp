class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmsr_tests.cwl
inputs:
- id: _list_list
  doc: --list        list available tests and exit
  type: boolean
  inputBinding:
    prefix: -l
- id: _exhaustive_also
  doc: --exhaustive  also run extensive and slow tests --arguments   print expanded
    command line arguments
  type: boolean
  inputBinding:
    prefix: -x
- id: _quiet_quiet
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
  doc: --debug       debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: log_level
  doc: '[l]evel: string constant (fatal, error, warn, info, debug, trace) use level
    l for the logger'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_config
  doc: '[f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: --log-config
- id: tests_to_run
  doc: 'names of tests to run (default: all)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmsr_tests
