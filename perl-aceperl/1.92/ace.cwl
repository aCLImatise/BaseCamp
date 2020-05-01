#!/usr/bin/env cwl-runner

baseCommand:
- ace.pl
class: CommandLineTool
cwlVersion: v1.0
id: ace.pl
inputs:
- doc: Server host (localhost)
  id: host
  inputBinding:
    prefix: -host
  type: string
- doc: Server port (200005)
  id: port
  inputBinding:
    prefix: -port
  type: string
- doc: Local database path (no default)
  id: path
  inputBinding:
    prefix: -path
  type: string
- doc: <url>       Server URL (see below
  id: url
  inputBinding:
    prefix: -url
  type: boolean
- doc: Username
  id: login
  inputBinding:
    prefix: -login
  type: string
- doc: Password
  id: pass
  inputBinding:
    prefix: -pass
  type: string
- doc: Use T-shell completion mode
  id: tcsh
  inputBinding:
    prefix: -tcsh
  type: boolean
- doc: Save database updates automatically
  id: save
  inputBinding:
    prefix: -save
  type: boolean
- doc: Run a command and quit
  id: exec
  inputBinding:
    prefix: -exec
  type: string
