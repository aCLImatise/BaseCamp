#!/usr/bin/env cwl-runner

baseCommand:
- vcfPair
class: CommandLineTool
cwlVersion: v1.0
id: vcfpair
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
