class: CommandLineTool
id: simkaMinCore_export.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    input dir containing distance matrices in binary format (-out
    argument of ./simkaMin distance)'
  type: boolean
  inputBinding:
    prefix: -in
- id: in_in_one
  doc: '(1 arg) :    first used sketch file (-in1 argument of ./simkaMin distance)'
  type: boolean
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: '(1 arg) :    second used sketch file (-in2 argument of ./simkaMin distance)'
  type: boolean
  inputBinding:
    prefix: -in2
- id: in_out
  doc: "(1 arg) :    output dir for distance matrices  [default './simkaMin_results']"
  type: boolean
  inputBinding:
    prefix: -out
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- export
