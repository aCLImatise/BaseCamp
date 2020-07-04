class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/golf.cwl
inputs:
- id: trace
  doc: '(init,prune,fix,fail,done,propagate,commit,none,all,variable,general) default:
    none trace flags (comma-separated list)'
  type: boolean
  inputBinding:
    prefix: -trace
- id: int_default_number_weeks
  doc: '(int) default: 9 number of weeks'
  type: boolean
  inputBinding:
    prefix: -w
- id: int_default_number_groups
  doc: '(int) default: 8 number of groups'
  type: boolean
  inputBinding:
    prefix: -g
- id: int_default_number_players
  doc: '(int) default: 4 number of players per group'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- golf
