class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metaeuk_groupstoacc.cwl
inputs:
- id: threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- metaeuk
- groupstoacc
