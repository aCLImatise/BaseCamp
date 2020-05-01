#!/usr/bin/env cwl-runner

baseCommand:
- bam2sam
class: CommandLineTool
cwlVersion: v1.0
id: bam2sam
inputs:
- doc: Omit header from output.
  id: no_header
  inputBinding:
    prefix: --no-header
  type: boolean
- doc: Print only the header (no records).
  id: header_only
  inputBinding:
    prefix: --header-only
  type: boolean
