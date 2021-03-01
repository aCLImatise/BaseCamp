class: CommandLineTool
id: obrms.cwl
inputs:
- id: in_out
  doc: re-oriented test structure output
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_first_only
  doc: use only the first structure in the reference file
  type: boolean?
  inputBinding:
    prefix: --firstonly
- id: in_minimize
  doc: compute minimum RMSD
  type: boolean?
  inputBinding:
    prefix: --minimize
- id: in_cross
  doc: compute all n^2 RMSDs between molecules of reference file
  type: boolean?
  inputBinding:
    prefix: --cross
- id: in_separate
  doc: separate reference file into constituent molecules and report best RMSD
  type: boolean?
  inputBinding:
    prefix: --separate
- id: in_reference_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_test_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obrms
