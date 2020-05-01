#!/usr/bin/env cwl-runner

baseCommand:
- filter-bam
class: CommandLineTool
cwlVersion: v1.0
id: filter-bam
inputs:
- doc: Name of readgroup to discard.
  id: exclude_read_group
  inputBinding:
    prefix: --exclude_readgroup
  type: string
