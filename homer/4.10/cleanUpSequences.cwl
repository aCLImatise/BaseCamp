#!/usr/bin/env cwl-runner

baseCommand:
- cleanUpSequences.pl
class: CommandLineTool
cwlVersion: v1.0
id: cleanupsequences.pl
inputs:
- doc: '# and -min # removes sequences that are longer than max and shorter than min(optional)'
  id: max
  inputBinding:
    prefix: -max
  type: boolean
