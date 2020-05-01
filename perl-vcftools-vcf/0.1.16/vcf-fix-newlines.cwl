#!/usr/bin/env cwl-runner

baseCommand:
- vcf-fix-newlines
class: CommandLineTool
cwlVersion: v1.0
id: vcf-fix-newlines
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: Report if the file is consistent with the current platform based.
  id: info
  inputBinding:
    prefix: --info
  type: boolean
