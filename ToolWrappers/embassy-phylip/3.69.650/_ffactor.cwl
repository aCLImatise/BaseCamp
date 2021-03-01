class: CommandLineTool
id: _ffactor.cwl
inputs:
- id: in_anc
  doc: boolean    [N] Put ancestral states in output file
  type: boolean?
  inputBinding:
    prefix: -anc
- id: in_factors
  doc: boolean    [N] Put factors information in output file
  type: boolean?
  inputBinding:
    prefix: -factors
- id: in_out_factor_file
  doc: "outfile    [*.ffactor] Phylip factor data output file\n(optional)"
  type: File?
  inputBinding:
    prefix: -outfactorfile
- id: in_out_an_c_file
  doc: "outfile    [*.ffactor] Phylip ancestor data output file\n(optional)"
  type: File?
  inputBinding:
    prefix: -outancfile
- id: in_file
  doc: 'Additional (Optional) qualifiers:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_factor_file
  doc: "outfile    [*.ffactor] Phylip factor data output file\n(optional)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_factor_file)
- id: out_out_an_c_file
  doc: "outfile    [*.ffactor] Phylip ancestor data output file\n(optional)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_an_c_file)
hints: []
cwlVersion: v1.1
baseCommand:
- _ffactor
