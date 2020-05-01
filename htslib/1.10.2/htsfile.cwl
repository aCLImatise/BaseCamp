#!/usr/bin/env cwl-runner

baseCommand:
- htsfile
class: CommandLineTool
cwlVersion: v1.0
id: htsfile
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: Write textual form of FILEs to standard output
  id: view
  inputBinding:
    prefix: --view
  type: boolean
- doc: Copy the exact contents of FILE to DESTFILE
  id: copy
  inputBinding:
    prefix: --copy
  type: boolean
- doc: Suppress header display in view mode
  id: no_header
  inputBinding:
    prefix: --no-header
  type: boolean
- doc: Increase verbosity of warnings and diagnostics
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
