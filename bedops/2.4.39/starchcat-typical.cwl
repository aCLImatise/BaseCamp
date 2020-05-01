#!/usr/bin/env cwl-runner

baseCommand:
- starchcat-typical
class: CommandLineTool
cwlVersion: v1.0
id: starchcat-typical
inputs:
- doc: ="foo bar..."   Append note to output archive metadata (optional).
  id: note
  inputBinding:
    prefix: --note
  type: boolean
- doc: '| --gzip      Specify backend compression type (optional, default is bzip2).'
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: Skip generating per-chromosome data integrity signature (optional, default
    is to generate signature).
  id: omit_signature
  inputBinding:
    prefix: --omit-signature
  type: boolean
- doc: Report compression progress every N elements per chromosome to standard error
    stream (optional)
  id: report_progress
  inputBinding:
    prefix: --report-progress
  type: string
