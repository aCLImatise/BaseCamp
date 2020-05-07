class: CommandLineTool
id: involucro.cwl
inputs:
- id: h
  doc: Set the URL of the Docker instance (default "unix:///var/run/docker.sock")
  type: string
  inputBinding:
    prefix: -H
- id: t
  doc: Shorthand for --tasks
  type: boolean
  inputBinding:
    prefix: -T
- id: e
  doc: Evaluate the given script directly, not evaluating the control file
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: Set the control file (default "invfile.lua")
  type: string
  inputBinding:
    prefix: -f
- id: host
  doc: Long form for -H (default "unix:///var/run/docker.sock")
  type: string
  inputBinding:
    prefix: -host
- id: s
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
- id: v
  doc: Set verbosity, 3 logs everything, 2 shows standard output (default 1)
  type: long
  inputBinding:
    prefix: -v
- id: version
  doc: Show version and the exit
  type: boolean
  inputBinding:
    prefix: -version
- id: w
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
