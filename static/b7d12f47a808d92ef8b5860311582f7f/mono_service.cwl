class: CommandLineTool
id: mono_service.cwl
inputs:
- id: in_directory_working_directory
  doc: :<directory>         Working directory
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_lock_file_lock
  doc: :<lock file>         Lock file (default is /tmp/<service>.lock)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_syslog_name_name
  doc: :<syslog name>       Name to show in syslog
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_service_name_name
  doc: :<service name>      Name of service to start (default is first defined)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_debug
  doc: Do not send to background nor redirect input/output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_no_daemon
  doc: Do not send to background nor redirect input/output
  type: boolean?
  inputBinding:
    prefix: --no-daemon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mono-service
