class: CommandLineTool
id: simkaMinCore_distance.cwl
inputs:
- id: in_in_one
  doc: '(1 arg) :    filename to a sketch file to compare with -in2'
  type: boolean?
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: '(1 arg) :    filename to a sketch file to compare with -in1'
  type: boolean?
  inputBinding:
    prefix: -in2
- id: in_out
  doc: "(1 arg) :    output dir for distance matrices  [default './simkaMin_results']"
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_start_i
  doc: "(1 arg) :    start i (row)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -start-i
- id: in_start_j
  doc: "(1 arg) :    start j (column)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -start-j
- id: in_n_i
  doc: "(1 arg) :    Nb datasets to process (row)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -n-i
- id: in_n_j
  doc: "(1 arg) :    Nb datasets to process (column)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -n-j
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- distance
