#!/usr/bin/env cwl-runner

baseCommand:
- check_reference
class: CommandLineTool
cwlVersion: v1.0
id: check_reference
inputs:
- doc: samtools reference sequence (required)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
