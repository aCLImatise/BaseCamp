class: CommandLineTool
id: remuRNA.cwl
inputs:
- id: in_na
  doc: =RNA (default) | DNA
  type: boolean?
  inputBinding:
    prefix: --NA
- id: in_energy
  doc: =|sig| (default) | sig
  type: boolean?
  inputBinding:
    prefix: --energy
- id: in_tm_in
  doc: =Min Temperature (default 37)
  type: boolean?
  inputBinding:
    prefix: --tmin
- id: in_tinc
  doc: =Temperature Inc (default 1)
  type: boolean?
  inputBinding:
    prefix: --tinc
- id: in_tmax
  doc: =Max Temperature (default 37)
  type: boolean?
  inputBinding:
    prefix: --tmax
- id: in_suffix
  doc: = suffix (default NULL)
  type: boolean?
  inputBinding:
    prefix: --suffix
- id: in_log
  doc: = log level ( 0 [OFF] | 1 [ERROR(default)] | 2 [WARN] | 3 [INFO] | 4 [DEBUG]
    | 5 [ALL])
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_sodium
  doc: =Salt concentration
  type: boolean?
  inputBinding:
    prefix: --sodium
- id: in_magnesium
  doc: =Mg concentration
  type: boolean?
  inputBinding:
    prefix: --magnesium
- id: in_window
  doc: computes average distance over windows of size winsize.
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_proc
  doc: =number of CPUs
  type: boolean?
  inputBinding:
    prefix: --proc
- id: in_polymer
  doc: polymer
  type: boolean?
  inputBinding:
    prefix: --polymer
- id: in_zip
  doc: zip
  type: boolean?
  inputBinding:
    prefix: --zip
- id: in_mutations
  doc: computes relative entropy for all ppossible point mutations
  type: boolean?
  inputBinding:
    prefix: --mutations
- id: in_no_dangle
  doc: no dangle energy, (default, dangling energies will be added for the bases adjacent
    to a helix on both sides in any case)
  type: boolean?
  inputBinding:
    prefix: --nodangle
- id: in_m_urna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- remuRNA
