#!/usr/bin/env cwl-runner

baseCommand:
- rebaler
class: CommandLineTool
cwlVersion: v1.0
id: rebaler
inputs:
- doc: 'If set, Rebaler will polish the given genome without first producing an unpolished
    version (default: False)'
  id: direct
  inputBinding:
    prefix: --direct
  type: boolean
- doc: 'Number of threads to use for alignment and polishing (default: 8)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'If a part of the reference is missing, replace it with random sequence (default:
    leave it as the reference sequence)'
  id: random
  inputBinding:
    prefix: --random
  type: boolean
