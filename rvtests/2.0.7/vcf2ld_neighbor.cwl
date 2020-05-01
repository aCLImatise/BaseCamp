#!/usr/bin/env cwl-runner

baseCommand:
- vcf2ld_neighbor
class: CommandLineTool
cwlVersion: v1.0
id: vcf2ld_neighbor
inputs:
- doc: '[], --peopleIncludeFile []'
  id: people_include_id
  inputBinding:
    prefix: --peopleIncludeID
  type: boolean
- doc: '[], --peopleExcludeFile []'
  id: people_exclude_id
  inputBinding:
    prefix: --peopleExcludeID
  type: boolean
