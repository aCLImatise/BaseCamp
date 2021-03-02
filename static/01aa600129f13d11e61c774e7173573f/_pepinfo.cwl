class: CommandLineTool
id: _pepinfo.cwl
inputs:
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_aa_properties
  doc: "datafile   [Eaa_properties.dat] Amino acid chemical\nclasses data file"
  type: boolean?
  inputBinding:
    prefix: -aaproperties
- id: in_aa_hydropathy
  doc: "datafile   [Eaa_hydropathy.dat] Amino acid hydropathy\nvalues data file"
  type: boolean?
  inputBinding:
    prefix: -aahydropathy
- id: in_h_window
  doc: "integer    [9] Window size for hydropathy averaging\n(Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -hwindow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _pepinfo
