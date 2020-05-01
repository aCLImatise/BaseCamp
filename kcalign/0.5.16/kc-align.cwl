#!/usr/bin/env cwl-runner

baseCommand:
- kc-align
class: CommandLineTool
cwlVersion: v1.0
id: kc-align
inputs:
- doc: Reference to align against
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Reads to align
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: Start position, required in genome mode
  id: start
  inputBinding:
    prefix: --start
  type: string
- doc: End position, required in genome mode
  id: end
  inputBinding:
    prefix: --end
  type: string
- doc: Alignment mode
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: Compress identical sequences
  id: compress
  inputBinding:
    prefix: --compress
  type: boolean
