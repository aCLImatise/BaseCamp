#!/usr/bin/env cwl-runner

baseCommand:
- crt
class: CommandLineTool
cwlVersion: v1.0
id: crt
inputs:
- doc: java [options] -jar <jarfile> [args...] (to execute a jar file)
  id: or
  inputBinding:
    position: 0
  type: string
- doc: java [options] -m <module>[/<mainclass>] [args...] java [options] --module
    <module>[/<mainclass>] [args...] (to execute the main class in a module)
  id: or
  inputBinding:
    position: 1
  type: string
- doc: java [options] <sourcefile> [args] (to execute a single source-file program)
  id: or
  inputBinding:
    position: 2
  type: string
- doc: prevent further argument file expansion
  id: disable_files
  inputBinding:
    prefix: -disable-@files
  type: boolean
- doc: allow classes to depend on preview features of this release
  id: enable_preview
  inputBinding:
    prefix: --enable-preview
  type: boolean
