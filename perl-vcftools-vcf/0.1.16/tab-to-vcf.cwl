#!/usr/bin/env cwl-runner

baseCommand:
- tab-to-vcf
class: CommandLineTool
cwlVersion: v1.0
id: tab-to-vcf
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: The column ID.
  id: id
  inputBinding:
    prefix: --id
  type: string
- doc: The reference sequence (optional).
  id: ref
  inputBinding:
    prefix: --ref
  type: string
