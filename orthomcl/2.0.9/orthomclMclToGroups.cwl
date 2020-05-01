#!/usr/bin/env cwl-runner

baseCommand:
- orthomclMclToGroups
class: CommandLineTool
cwlVersion: v1.0
id: orthomclmcltogroups
inputs:
- doc: a prefix to use when generating group ids.  For example OG2_
  id: prefix
  inputBinding:
    position: 0
  type: string
- doc: a number to start the id generating with.  For example 1000
  id: starting_id_num
  inputBinding:
    position: 1
  type: string
