#!/usr/bin/env cwl-runner

baseCommand:
- fragment_4dnpairs.pl
class: CommandLineTool
cwlVersion: v1.0
id: fragment_4dnpairs.pl
inputs:
- doc: ': allows replacing existing frag1/frag2 columns. Default: abort if the columns
    already exist.'
  id: allow_replacement
  inputBinding:
    prefix: --allow-replacement
  type: boolean
