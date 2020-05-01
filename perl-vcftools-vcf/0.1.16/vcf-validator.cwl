#!/usr/bin/env cwl-runner

baseCommand:
- vcf-validator
class: CommandLineTool
cwlVersion: v1.0
id: vcf-validator
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_vcf_gz
  inputBinding:
    position: 1
  type: File
- doc: Warn about duplicate positions.
  id: duplicates
  inputBinding:
    prefix: --duplicates
  type: boolean
- doc: Output all messages only once.
  id: unique_messages
  inputBinding:
    prefix: --unique-messages
  type: boolean
