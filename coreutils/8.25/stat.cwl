#!/usr/bin/env cwl-runner

baseCommand:
- stat
class: CommandLineTool
cwlVersion: v1.0
id: stat
inputs:
- doc: follow links
  id: dereference
  inputBinding:
    prefix: --dereference
  type: boolean
- doc: display file system status instead of file status
  id: file_system
  inputBinding:
    prefix: --file-system
  type: boolean
- doc: use the specified FORMAT instead of the default; output a newline after each
    use of FORMAT
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: like --format, but interpret backslash escapes, and do not output a mandatory
    trailing newline; if you want a newline, include \n in FORMAT
  id: printf
  inputBinding:
    prefix: --printf
  type: string
- doc: print the information in terse form
  id: terse
  inputBinding:
    prefix: --terse
  type: boolean
