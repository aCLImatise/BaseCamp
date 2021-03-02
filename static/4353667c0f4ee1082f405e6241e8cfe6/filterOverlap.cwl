class: CommandLineTool
id: filterOverlap.cwl
inputs:
- id: in_ovl
  doc: -- overlaps are OVL
  type: boolean?
  inputBinding:
    prefix: -ovl
- id: in_obt
  doc: -- overlaps are OBT
  type: boolean?
  inputBinding:
    prefix: -obt
- id: in_minlength
  doc: -- throw out overlaps shorter than l
  type: string?
  inputBinding:
    prefix: -minlength
- id: in_max_error
  doc: -- throw out overlaps with more than fraction e error
  type: string?
  inputBinding:
    prefix: -maxerror
- id: in_no_containment
  doc: -- throw out containment overlaps
  type: boolean?
  inputBinding:
    prefix: -nocontainment
- id: in_no_dovetail
  doc: -- throw out dovetail overlaps
  type: boolean?
  inputBinding:
    prefix: -nodovetail
- id: in_gkp
  doc: Needed for -ovl or -nocontainment or -nodovetail
  type: string?
  inputBinding:
    prefix: -gkp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filterOverlap
