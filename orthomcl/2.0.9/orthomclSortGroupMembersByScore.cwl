#!/usr/bin/env cwl-runner

baseCommand:
- orthomclSortGroupMembersByScore
class: CommandLineTool
cwlVersion: v1.0
id: orthomclsortgroupmembersbyscore
inputs:
- doc: ''
  id: groups_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: pairs_dir
  inputBinding:
    position: 1
  type: string
- doc: ':  sorted groups file'
  id: standard
  inputBinding:
    prefix: '- standard'
  type: string
