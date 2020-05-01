#!/usr/bin/env cwl-runner

baseCommand:
- vcfglbound
class: CommandLineTool
cwlVersion: v1.0
id: vcfglbound
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: Bound GLs to this limit.
  id: bound
  inputBinding:
    prefix: --bound
  type: string
- doc: If GLs are > 0, remove site.
  id: exclude_broken
  inputBinding:
    prefix: --exclude-broken
  type: boolean
