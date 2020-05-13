class: CommandLineTool
id: remuRNA.cwl
inputs:
- id: na
  doc: =RNA (default) | DNA
  type: boolean
  inputBinding:
    prefix: --NA
- id: energy
  doc: =|sig| (default) | sig
  type: boolean
  inputBinding:
    prefix: --energy
- id: tm_in
  doc: =Min Temperature (default 37)
  type: boolean
  inputBinding:
    prefix: --tmin
- id: tinc
  doc: =Temperature Inc (default 1)
  type: boolean
  inputBinding:
    prefix: --tinc
- id: tmax
  doc: =Max Temperature (default 37)
  type: boolean
  inputBinding:
    prefix: --tmax
- id: suffix
  doc: = suffix (default NULL)
  type: boolean
  inputBinding:
    prefix: --suffix
- id: log
  doc: = log level ( 0 [OFF] | 1 [ERROR(default)] | 2 [WARN] | 3 [INFO] | 4 [DEBUG]
    | 5 [ALL])
  type: boolean
  inputBinding:
    prefix: --log
- id: sodium
  doc: =Salt concentration
  type: boolean
  inputBinding:
    prefix: --sodium
- id: magnesium
  doc: =Mg concentration
  type: boolean
  inputBinding:
    prefix: --magnesium
- id: window
  doc: computes average distance over windows of size winsize.
  type: boolean
  inputBinding:
    prefix: --window
- id: proc
  doc: =number of CPUs
  type: boolean
  inputBinding:
    prefix: --proc
- id: polymer
  doc: polymer
  type: boolean
  inputBinding:
    prefix: --polymer
- id: zip
  doc: zip
  type: boolean
  inputBinding:
    prefix: --zip
- id: mutations
  doc: computes relative entropy for all ppossible point mutations
  type: boolean
  inputBinding:
    prefix: --mutations
- id: no_dangle
  doc: no dangle energy, (default, dangling energies will be added for the bases adjacent
    to a helix on both sides in any case)
  type: boolean
  inputBinding:
    prefix: --nodangle
outputs: []
cwlVersion: v1.1
baseCommand:
- remuRNA
