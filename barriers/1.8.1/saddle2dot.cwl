#!/usr/bin/env cwl-runner

baseCommand:
- saddle2dot.pl
class: CommandLineTool
cwlVersion: v1.0
id: saddle2dot.pl
inputs:
- doc: '<Int>  Set cutoff to <Int> (default: 1000)'
  id: cut
  inputBinding:
    prefix: -cut
  type: boolean
- doc: 'Sets name of graph (default: Unknown)'
  id: name
  inputBinding:
    prefix: -name
  type: string
