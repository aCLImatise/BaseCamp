class: CommandLineTool
id: ../../../gtftk.cwl
inputs:
- id: in_bash_comp
  doc: 'Get a script to activate bash completion. (default: False)'
  type: boolean
  inputBinding:
    prefix: --bash-comp
- id: in_plugin_tests
  doc: 'Display bats tests for all plugin. (default: False)'
  type: boolean
  inputBinding:
    prefix: --plugin-tests
- id: in_plugin_tests_no_conn
  doc: 'Display bats tests for plugins not relying on server conn. (default: False)'
  type: boolean
  inputBinding:
    prefix: --plugin-tests-no-conn
- id: in_system_info
  doc: 'Display some info about the system. (default: False)'
  type: boolean
  inputBinding:
    prefix: --system-info
- id: in_plugin_path
  doc: 'Print plugin path (default: False)'
  type: boolean
  inputBinding:
    prefix: --plugin-path
- id: in_list_plugins
  doc: 'Get the list of plugins. (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-plugins
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gtftk
