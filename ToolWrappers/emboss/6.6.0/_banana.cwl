class: CommandLineTool
id: _banana.cwl
inputs:
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean
  inputBinding:
    prefix: -graph
- id: in_angles_file
  doc: "datafile   [Eangles_tri.dat] DNA base trimer roll\nangles data file"
  type: boolean
  inputBinding:
    prefix: -anglesfile
- id: in_residues_per_line
  doc: "integer    [50] Number of residues to be displayed on\neach line (Any integer\
    \ value)"
  type: boolean
  inputBinding:
    prefix: -residuesperline
- id: in_outfile
  doc: outfile    [banana.profile] Output file name
  type: File
  inputBinding:
    prefix: -outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [banana.profile] Output file name
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- _banana
