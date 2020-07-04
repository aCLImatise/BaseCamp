class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/map2slim.cwl
inputs:
- id: will_force_mapslim
  doc: This will force map2slim to give counts of the assoc file, rather than map
    it
  type: boolean
  inputBinding:
    prefix: -c
- id: when_used_conjunction
  doc: "When used in conjunction with \e[1m-c\e[0m will tab the output so that the\
    \ indentation reflects the tree hierarchy in the slim file"
  type: boolean
  inputBinding:
    prefix: -t
- id: mout_filem_will
  doc: "\e[1mout file\e[0m This will write the mapped assocs (or counts) to the specified\
    \ file, rather than to the screen"
  type: boolean
  inputBinding:
    prefix: -o
- id: show_names
  doc: (Only works with -outmap) Show the names of the term in the slim mapping file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- map2slim
