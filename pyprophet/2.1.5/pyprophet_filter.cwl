class: CommandLineTool
id: pyprophet_filter.cwl
inputs:
- id: in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: max_precursor_pep
  doc: 'Maximum PEP to retain scored precursors in sqMass.  [default: 0.7]'
  type: double
  inputBinding:
    prefix: --max_precursor_pep
- id: max_peak_group_pep
  doc: 'Maximum PEP to retain scored peak groups in sqMass.  [default: 0.7]'
  type: double
  inputBinding:
    prefix: --max_peakgroup_pep
- id: max_transition_pep
  doc: 'Maximum PEP to retain scored transitions in sqMass.  [default: 0.7]'
  type: double
  inputBinding:
    prefix: --max_transition_pep
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- filter
