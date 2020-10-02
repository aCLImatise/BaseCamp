class: CommandLineTool
id: ppserver.py.cwl
inputs:
- id: in_set_log_level
  doc: ': set log level to debug'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__log_format
  doc: ': log format'
  type: string
  inputBinding:
    prefix: -f
- id: in_enable_autodiscovery_service
  doc: ': enable auto-discovery service'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_restart_worker_process
  doc: ': restart worker process after each task completion'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_protocol_number_pickle
  doc: ': protocol number for pickle module'
  type: long
  inputBinding:
    prefix: -n
- id: in_path_config_file
  doc: ': path to config file'
  type: File
  inputBinding:
    prefix: -c
- id: in__interface_listen
  doc: ': interface to listen'
  type: string
  inputBinding:
    prefix: -i
- id: in_broadcast_address_autodiscovery
  doc: ': broadcast address for auto-discovery service'
  type: string
  inputBinding:
    prefix: -b
- id: in__port_listen
  doc: ': port to listen'
  type: string
  inputBinding:
    prefix: -p
- id: in_number_workers_start
  doc: ': number of workers to start'
  type: long
  inputBinding:
    prefix: -w
- id: in__secret_authentication
  doc: ': secret for authentication'
  type: string
  inputBinding:
    prefix: -s
- id: in_timeout_exit_exist
  doc: ': timeout to exit if no connections with clients exist'
  type: string
  inputBinding:
    prefix: -t
- id: in_socket_timeout_seconds
  doc: ': socket timeout in seconds'
  type: string
  inputBinding:
    prefix: -k
- id: in_file_write_pid
  doc: ': file to write PID to'
  type: File
  inputBinding:
    prefix: -P
- id: in_hd_ar
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hdar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ppserver.py
