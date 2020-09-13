class: CommandLineTool
id: ../../../pyprophet_filter.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: in_max_precursor_pep
  doc: Maximum PEP to retain scored precursors in
  type: double
  inputBinding:
    prefix: --max_precursor_pep
- id: in_max_peak_group_pep
  doc: Maximum PEP to retain scored peak groups in
  type: double
  inputBinding:
    prefix: --max_peakgroup_pep
- id: in_max_transition_pep
  doc: Maximum PEP to retain scored transitions in
  type: double
  inputBinding:
    prefix: --max_transition_pep
- id: in_sq_mass_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyprophet
- filter
