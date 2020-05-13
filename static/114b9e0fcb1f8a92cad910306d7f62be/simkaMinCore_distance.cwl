class: CommandLineTool
id: simkaMinCore_distance.cwl
inputs:
- id: in1
  doc: '(1 arg) :    filename to a sketch file to compare with -in2'
  type: boolean
  inputBinding:
    prefix: -in1
- id: in2
  doc: '(1 arg) :    filename to a sketch file to compare with -in1'
  type: boolean
  inputBinding:
    prefix: -in2
- id: out
  doc: "(1 arg) :    output dir for distance matrices  [default './simkaMin_results']"
  type: boolean
  inputBinding:
    prefix: -out
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: start_i
  doc: "(1 arg) :    start i (row)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -start-i
- id: start_j
  doc: "(1 arg) :    start j (column)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -start-j
- id: n_i
  doc: "(1 arg) :    Nb datasets to process (row)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -n-i
- id: n_j
  doc: "(1 arg) :    Nb datasets to process (column)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -n-j
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- distance
