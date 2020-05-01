#!/usr/bin/env cwl-runner

baseCommand:
- gff2tdf.pl
class: CommandLineTool
cwlVersion: v1.0
id: gff2tdf.pl
inputs:
- doc: 'input format to use (gff or bedgraph) [Current value: gff]'
  id: format
  inputBinding:
    prefix: --format
  type: boolean
- doc: 'IGVTools genome file to use [Current value: dmel_r5.33]'
  id: genome
  inputBinding:
    prefix: --genome
  type: boolean
- doc: path to IGVtools (leave blank if igvtools and igvtools.jar are in your path)
  id: igv_path
  inputBinding:
    prefix: --igvpath
  type: boolean
