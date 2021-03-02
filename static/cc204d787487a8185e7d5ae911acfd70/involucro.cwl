class: CommandLineTool
id: involucro.cwl
inputs:
- id: in_set_url_default
  doc: Set the URL of the Docker instance (default "unix:///var/run/docker.sock")
  type: string?
  inputBinding:
    prefix: -H
- id: in_shorthand_for_tasks
  doc: Shorthand for --tasks
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_evaluate_given_script
  doc: Evaluate the given script directly, not evaluating the control file
  type: File?
  inputBinding:
    prefix: -e
- id: in_set_file_default
  doc: Set the control file (default "invfile.lua")
  type: File?
  inputBinding:
    prefix: -f
- id: in_host
  doc: Long form for -H (default "unix:///var/run/docker.sock")
  type: string?
  inputBinding:
    prefix: -host
- id: in_shorthand__set
  doc: Shorthand for --set (default [])
  type: string?
  inputBinding:
    prefix: -s
- id: in_set
  doc: Used as KEY=VALUE, makes VAR[KEY] available with value VALUE in Lua script
    (default [])
  type: string?
  inputBinding:
    prefix: -set
- id: in_tasks
  doc: Show available tasks and then exit
  type: boolean?
  inputBinding:
    prefix: -tasks
- id: in_set_verbosity_logs
  doc: Set verbosity, 3 logs everything, 2 shows standard output (default 1)
  type: long?
  inputBinding:
    prefix: -v
- id: in_version
  doc: Show version and the exit
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_set_working_dir
  doc: Set working dir, being the base for all operations. Also settable via environment
    variable $INVOLUCRO_WORKDIR (default ".")
  type: string?
  inputBinding:
    prefix: -w
- id: in_wrap
  doc: "Execute encoded wrap task\n"
  type: string?
  inputBinding:
    prefix: -wrap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- involucro
