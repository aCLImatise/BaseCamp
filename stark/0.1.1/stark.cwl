class: CommandLineTool
id: ../../../stark.cwl
inputs:
- id: _use_file
  doc: ',      --input=FILE           use FILE for input'
  type: boolean
  inputBinding:
    prefix: -i
- id: _outputfile_use
  doc: ',      --output=FILE          use FILE for output'
  type: boolean
  inputBinding:
    prefix: -o
- id: _loglevel_use
  doc: ',      --log=LEVEL            use LEVEL for log level (0=OFF, 1000=ALL)'
  type: boolean
  inputBinding:
    prefix: -l
- id: _mergetypetype_use
  doc: ',      --merge-type=TYPE      use TYPE for merging (0=no merge, 1=only node
    reducing merges, 2=all merges)'
  type: boolean
  inputBinding:
    prefix: -m
- id: _unifybeforerun_unify
  doc: ',      --unify-before-run     unify input file unitigs before use'
  type: boolean
  inputBinding:
    prefix: -u
- id: _statisticstype_print
  doc: ',      --statistics=TYPE      print statistics (0=no statistics, 1=trivial
    statistics, 2=cpu-consuming statistics)'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- stark
