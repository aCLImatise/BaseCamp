class: CommandLineTool
id: jdb.cwl
inputs:
- id: in_sourcepath
  doc: "<directories separated by \":\">\ndirectories in which to look for source\
    \ files"
  type: boolean
  inputBinding:
    prefix: -sourcepath
- id: in_attach
  doc: attach to a running VM at the specified address using standard connector
  type: string
  inputBinding:
    prefix: -attach
- id: in_listen
  doc: wait for a running VM to connect at the specified address using standard connector
  type: string
  inputBinding:
    prefix: -listen
- id: in_listen_any
  doc: wait for a running VM to connect at any available address using standard connector
  type: boolean
  inputBinding:
    prefix: -listenany
- id: in_launch
  doc: launch VM immediately instead of waiting for 'run' command
  type: boolean
  inputBinding:
    prefix: -launch
- id: in_list_connectors
  doc: list the connectors available in this VM
  type: boolean
  inputBinding:
    prefix: -listconnectors
- id: in_connect
  doc: ":<name1>=<value1>,...\nconnect to target VM using named connector with listed\
    \ argument values"
  type: long
  inputBinding:
    prefix: -connect
- id: in_dbg_trace
  doc: '[flags] print info for debugging jdb'
  type: boolean
  inputBinding:
    prefix: -dbgtrace
- id: in_t_client
  doc: run the application in the HotSpot(TM) Client Compiler
  type: boolean
  inputBinding:
    prefix: -tclient
- id: in_t_server
  doc: run the application in the HotSpot(TM) Server Compiler
  type: boolean
  inputBinding:
    prefix: -tserver
- id: in_verbose
  doc: "[:class|gc|jni]\nturn on verbose mode"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_namevalue_set_property
  doc: <name>=<value>  set a system property
  type: boolean
  inputBinding:
    prefix: -D
- id: in_classpath
  doc: "<directories separated by \":\">\nlist directories in which to look for classes"
  type: boolean
  inputBinding:
    prefix: -classpath
- id: in_option_target_option
  doc: <option>        non-standard target VM option
  type: boolean
  inputBinding:
    prefix: -X
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_class
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jdb
