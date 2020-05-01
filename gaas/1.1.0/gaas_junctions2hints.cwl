#!/usr/bin/env cwl-runner

baseCommand:
- gaas_junctions2hints.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_junctions2hints.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: junction_s2hintspl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
