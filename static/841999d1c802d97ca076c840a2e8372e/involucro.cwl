class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/involucro.cwl
inputs:
- id: set_url_docker
  doc: Set the URL of the Docker instance (default "unix:///var/run/docker.sock")
  type: string
  inputBinding:
    prefix: -H
- id: shorthand__tasks
  doc: Shorthand for --tasks
  type: boolean
  inputBinding:
    prefix: -T
- id: evaluate_given_script
  doc: Evaluate the given script directly, not evaluating the control file
  type: string
  inputBinding:
    prefix: -e
- id: set_file_default
  doc: Set the control file (default "invfile.lua")
  type: string
  inputBinding:
    prefix: -f
- id: host
  doc: Long form for -H (default "unix:///var/run/docker.sock")
  type: string
  inputBinding:
    prefix: -host
- id: shorthand__set
  doc: Shorthand for --set (default [])
  type: string
  inputBinding:
    prefix: -s
- id: set
  doc: Used as KEY=VALUE, makes VAR[KEY] available with value VALUE in Lua script
    (default [])
  type: string
  inputBinding:
    prefix: -set
- id: tasks
  doc: Show available tasks and then exit
  type: boolean
  inputBinding:
    prefix: -tasks
- id: set_verbosity_logs
  doc: Set verbosity, 3 logs everything, 2 shows standard output (default 1)
  type: long
  inputBinding:
    prefix: -v
- id: version
  doc: Show version and the exit
  type: boolean
  inputBinding:
    prefix: -version
- id: set_working_dir
  doc: Set working dir, being the base for all operations. Also settable via environment
    variable $INVOLUCRO_WORKDIR (default ".")
  type: string
  inputBinding:
    prefix: -w
- id: wrap
  doc: Execute encoded wrap task
  type: string
  inputBinding:
    prefix: -wrap
outputs: []
cwlVersion: v1.1
baseCommand:
- involucro
