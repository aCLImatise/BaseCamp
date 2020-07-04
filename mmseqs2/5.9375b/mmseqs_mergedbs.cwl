class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mmseqs_mergedbs.cwl
inputs:
- id: prefixes
  doc: 'Comma separated list of prefixes for each entry             '
  type: boolean
  inputBinding:
    prefix: --prefixes
- id: verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- mergedbs
