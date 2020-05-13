class: CommandLineTool
id: LoRMA.cwl
inputs:
- id: best_friends
  doc: "(1 arg) :    Number of best friends  [default '3']"
  type: boolean
  inputBinding:
    prefix: -bestfriends
- id: friends
  doc: "(1 arg) :    Number of friends  [default '7']"
  type: boolean
  inputBinding:
    prefix: -friends
- id: k
  doc: "(1 arg) :    kmer length  [default '31']"
  type: boolean
  inputBinding:
    prefix: -k
- id: discarded
  doc: '(1 arg) :    output file for discarded reads'
  type: boolean
  inputBinding:
    prefix: -discarded
- id: output
  doc: '(1 arg) :    output file for corrected reads'
  type: boolean
  inputBinding:
    prefix: -output
- id: reads
  doc: '(1 arg) :    file(s) of long reads'
  type: boolean
  inputBinding:
    prefix: -reads
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '1']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- LoRMA
