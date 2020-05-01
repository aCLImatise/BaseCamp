#!/usr/bin/env cwl-runner

baseCommand:
- pos2bed.pl
class: CommandLineTool
cwlVersion: v1.0
id: pos2bed.pl
inputs:
- doc: '(Allow the 5th column to be a floating point number, default: integer)'
  id: float
  inputBinding:
    prefix: -float
  type: boolean
- doc: (color strands red and blue, will also add a track line to file)
  id: color
  inputBinding:
    prefix: -color
  type: string
