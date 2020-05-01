#!/usr/bin/env cwl-runner

baseCommand:
- cgatreport-clean
class: CommandLineTool
cwlVersion: v1.0
id: cgatreport-clean
inputs:
- doc: loglevel. The higher, the more output [default=2]
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: only clean from certain sections [default=[]]
  id: section
  inputBinding:
    prefix: --section
  type: string
- doc: path to rst source [default=.]
  id: path
  inputBinding:
    prefix: --path
  type: File
- doc: path to build dir [default=.]
  id: build
  inputBinding:
    prefix: --build
  type: string
- doc: only show what is about to be deleted, but do not delete [default=False]
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
