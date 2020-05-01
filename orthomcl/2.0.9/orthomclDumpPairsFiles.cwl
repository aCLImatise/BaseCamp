#!/usr/bin/env cwl-runner

baseCommand:
- orthomclDumpPairsFiles
class: CommandLineTool
cwlVersion: v1.0
id: orthomcldumppairsfiles
inputs:
- doc: ''
  id: config_file
  inputBinding:
    position: 0
  type: string
- doc: ', Ortholog, CoOrtholog tables - populated by orthomclPairs'
  id: inparalog
  inputBinding:
    prefix: '- InParalog'
  type: boolean
