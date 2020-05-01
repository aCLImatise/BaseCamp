#!/usr/bin/env cwl-runner

baseCommand:
- fasten_validate
class: CommandLineTool
cwlVersion: v1.0
id: fasten_validate
inputs:
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: min_length
  inputBinding:
    prefix: --min-length
  type: long
- doc: ''
  id: min_quality
  inputBinding:
    prefix: --min-quality
  type: double
- doc: ''
  id: paired_end
  inputBinding:
    prefix: --paired-end
  type: boolean
- doc: ''
  id: print_reads
  inputBinding:
    prefix: --print-reads
  type: boolean
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
