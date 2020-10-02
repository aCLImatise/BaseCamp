class: CommandLineTool
id: stark.cwl
inputs:
- id: in__inputfile_use
  doc: ',      --input=FILE           use FILE for input'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__outputfile_use
  doc: ',      --output=FILE          use FILE for output'
  type: File
  inputBinding:
    prefix: -o
- id: in__loglevel_use
  doc: ',      --log=LEVEL            use LEVEL for log level (0=OFF, 1000=ALL)'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__mergetypetype_use
  doc: ',      --merge-type=TYPE      use TYPE for merging (0=no merge, 1=only node
    reducing merges, 2=all merges)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__unifybeforerun_unify
  doc: ',      --unify-before-run     unify input file unitigs before use'
  type: boolean
  inputBinding:
    prefix: -u
- id: in__statisticstype_print
  doc: ',      --statistics=TYPE      print statistics (0=no statistics, 1=trivial
    statistics, 2=cpu-consuming statistics)'
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfile_use
  doc: ',      --output=FILE          use FILE for output'
  type: File
  outputBinding:
    glob: $(inputs.in__outputfile_use)
cwlVersion: v1.1
baseCommand:
- stark
