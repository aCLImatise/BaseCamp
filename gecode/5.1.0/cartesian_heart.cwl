class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cartesian_heart.cwl
inputs:
- id: trace
  doc: '(init,prune,fix,fail,done,propagate,commit,none,all,variable,general) default:
    none trace flags (comma-separated list)'
  type: boolean
  inputBinding:
    prefix: -trace
outputs: []
cwlVersion: v1.1
baseCommand:
- cartesian-heart
