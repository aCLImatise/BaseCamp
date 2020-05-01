#!/usr/bin/env cwl-runner

baseCommand:
- tagBam
class: CommandLineTool
cwlVersion: v1.0
id: tagbam
inputs:
- doc: Use the full interval (including name, score, and strand) to populate tags.
    Requires the -labels option to identify from which file the interval came.
  id: intervals
  inputBinding:
    prefix: -intervals
  type: boolean
