class: CommandLineTool
id: gatekeeperbench.cwl
inputs:
- id: g
  doc: gkpStoreName    create/read/write the store called 'gkpStoreName'
  type: boolean
  inputBinding:
    prefix: -g
- id: seed
  doc: s               use random seed s
  type: boolean
  inputBinding:
    prefix: -seed
- id: create
  doc: add numFrags random fragments
  type: string
  inputBinding:
    prefix: -create
- id: mates
  doc: numMates        update numMates random mated fragments
  type: boolean
  inputBinding:
    prefix: -mates
- id: reads
  doc: numReads        read numReads random fragments
  type: boolean
  inputBinding:
    prefix: -reads
outputs: []
cwlVersion: v1.1
baseCommand:
- gatekeeperbench
