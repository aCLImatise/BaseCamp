class: CommandLineTool
id: genform.cwl
inputs:
- id: loss
  doc: ': for analyzing MS/MS peaks write losses instead of fragments'
  type: string
  inputBinding:
    position: 0
- id: in_tens
  doc: ': write intensities of MS/MS peaks to output'
  type: long
  inputBinding:
    position: 1
- id: dbe
  doc: ': write double bond equivalents to output'
  type: string
  inputBinding:
    position: 2
- id: cm
  doc: ': write calculated ion masses to output'
  type: string
  inputBinding:
    position: 3
- id: pc
  doc: ': output match values in percent'
  type: string
  inputBinding:
    position: 4
- id: sc
  doc: ': strip calculated isotope distributions'
  type: string
  inputBinding:
    position: 5
- id: no_ref
  doc: ': hide the reference information'
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- genform
