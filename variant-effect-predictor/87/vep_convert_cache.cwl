class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vep_convert_cache.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: convert_cache_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vep_convert_cache.pl
