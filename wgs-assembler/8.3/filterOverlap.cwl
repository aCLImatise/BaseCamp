class: CommandLineTool
id: filterOverlap.cwl
inputs:
- id: ovl
  doc: -- overlaps are OVL
  type: boolean
  inputBinding:
    prefix: -ovl
- id: obt
  doc: -- overlaps are OBT
  type: boolean
  inputBinding:
    prefix: -obt
- id: minlength
  doc: -- throw out overlaps shorter than l
  type: string
  inputBinding:
    prefix: -minlength
- id: max_error
  doc: -- throw out overlaps with more than fraction e error
  type: string
  inputBinding:
    prefix: -maxerror
- id: no_containment
  doc: -- throw out containment overlaps
  type: boolean
  inputBinding:
    prefix: -nocontainment
- id: no_dovetail
  doc: -- throw out dovetail overlaps
  type: boolean
  inputBinding:
    prefix: -nodovetail
- id: gkp
  doc: Needed for -ovl or -nocontainment or -nodovetail
  type: string
  inputBinding:
    prefix: -gkp
outputs: []
cwlVersion: v1.1
baseCommand:
- filterOverlap
