class: CommandLineTool
id: iep.cwl
inputs:
- id: in_amino
  doc: integer    [1] Number of N-termini (Integer 0 or more)
  type: boolean?
  inputBinding:
    prefix: -amino
- id: in_carboxyl
  doc: integer    [1] Number of C-termini (Integer 0 or more)
  type: boolean?
  inputBinding:
    prefix: -carboxyl
- id: in_lysine_modified
  doc: "integer    [0] Number of modified lysines (Integer 0 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -lysinemodified
- id: in_disulphide_s
  doc: "integer    [0] Number of disulphide bridges (Integer 0\nor more)"
  type: boolean?
  inputBinding:
    prefix: -disulphides
- id: in_pk_data
  doc: datafile   [Epk.dat] Values of pKa for amino acids
  type: boolean?
  inputBinding:
    prefix: -pkdata
- id: in_step
  doc: "float      [.5] Step value for pH (Number from 0.010 to\n1.000)"
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_plot
  doc: toggle     [N] Plot charge vs pH
  type: boolean?
  inputBinding:
    prefix: -plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iep
