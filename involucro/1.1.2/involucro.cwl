#!/usr/bin/env cwl-runner

baseCommand:
- involucro
class: CommandLineTool
cwlVersion: v1.0
id: involucro
inputs:
- doc: Set the URL of the Docker instance (default "unix:///var/run/docker.sock")
  id: h
  inputBinding:
    prefix: -H
  type: string
- doc: Shorthand for --tasks
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: Evaluate the given script directly, not evaluating the control file
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: Set the control file (default "invfile.lua")
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: Long form for -H (default "unix:///var/run/docker.sock")
  id: host
  inputBinding:
    prefix: -host
  type: string
- doc: Shorthand for --set (default [])
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: Used as KEY=VALUE, makes VAR[KEY] available with value VALUE in Lua script
    (default [])
  id: set
  inputBinding:
    prefix: -set
  type: string
- doc: Show available tasks and then exit
  id: tasks
  inputBinding:
    prefix: -tasks
  type: boolean
- doc: Set verbosity, 3 logs everything, 2 shows standard output (default 1)
  id: v
  inputBinding:
    prefix: -v
  type: long
- doc: Show version and the exit
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: Set working dir, being the base for all operations. Also settable via environment
    variable $INVOLUCRO_WORKDIR (default ".")
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: Execute encoded wrap task
  id: wrap
  inputBinding:
    prefix: -wrap
  type: string
