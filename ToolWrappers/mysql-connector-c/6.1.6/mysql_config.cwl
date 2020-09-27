class: CommandLineTool
id: mysql_config.cwl
inputs:
- id: in_cflags
  doc: '[-I/usr/local/include]'
  type: boolean
  inputBinding:
    prefix: --cflags
- id: in_cxxflags
  doc: '[-I/usr/local/include]'
  type: boolean
  inputBinding:
    prefix: --cxxflags
- id: in_include
  doc: '[-I/usr/local/include]'
  type: boolean
  inputBinding:
    prefix: --include
- id: in_libs
  doc: '[-L/usr/local/lib -lmysqlclient -lpthread -lm -lrt -ldl]'
  type: boolean
  inputBinding:
    prefix: --libs
- id: in_libs_r
  doc: '[-L/usr/local/lib -lmysqlclient -lpthread -lm -lrt -ldl]'
  type: boolean
  inputBinding:
    prefix: --libs_r
- id: in_plugin_dir
  doc: '[/usr/local/lib/plugin]'
  type: boolean
  inputBinding:
    prefix: --plugindir
- id: in_socket
  doc: '[/tmp/mysql.sock]'
  type: boolean
  inputBinding:
    prefix: --socket
- id: in_variable
  doc: "VAR is one of:\npkgincludedir [/usr/local/include]\npkglibdir     [/usr/local/lib]\n\
    plugindir     [/usr/local/lib/plugin]\n"
  type: string
  inputBinding:
    prefix: --variable
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mysql_config
