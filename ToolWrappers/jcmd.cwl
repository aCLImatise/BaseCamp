class: CommandLineTool
id: jcmd.cwl
inputs:
- id: in_read_execute_commands
  doc: read and execute commands from the file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_list_jvm_processes
  doc: list JVM processes on the local machine
  type: boolean
  inputBinding:
    prefix: -l
- id: in_pid_vertical_line_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command_dot_dot_dot_vertical_line_perf_counter_dot_print_vertical_line_f_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jcmd
