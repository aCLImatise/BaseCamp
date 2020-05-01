#!/usr/bin/env cwl-runner

baseCommand:
- structure_2_gspan.pl
class: CommandLineTool
cwlVersion: v1.0
id: structure_2_gspan.pl
inputs:
- doc: '"/var/tmp/fasta2shrep"'
  id: tmp
  inputBinding:
    prefix: -tmp
  type: boolean
- doc: '"CURRENT_DIR/GSPAN_Outputs/"'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
