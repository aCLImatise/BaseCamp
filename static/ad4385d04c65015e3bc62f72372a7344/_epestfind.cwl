class: CommandLineTool
id: _epestfind.cwl
inputs:
- id: in_window
  doc: "integer    [10] Minimal distance between positively\ncharged amino acids.\
    \ (Integer 2 or more)"
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_order
  doc: "selection  [score] Name of the output file which holds\nthe results of the\
    \ analysis. Results may be\nsorted by length, position and score."
  type: boolean?
  inputBinding:
    prefix: -order
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_mw_data
  doc: datafile   [Emolwt.dat] Molecular weights data file
  type: boolean?
  inputBinding:
    prefix: -mwdata
- id: in_threshold
  doc: "float      [+5.0] Threshold value to discriminate weak\nfrom potential PEST\
    \ motifs. Valid PEST\nmotifs are discriminated into 'poor' and\n'potential' motifs\
    \ depending on this\nthreshold score. By default, the default\nvalue is set to\
    \ +5.0 based on experimental\ndata. Alterations are not recommended since\nsignificance\
    \ is a matter of biology, not\nmathematics. (Number from -55.00 to 55.00)"
  type: boolean?
  inputBinding:
    prefix: -threshold
- id: in_mono
  doc: boolean    [N] Use monoisotopic weights
  type: boolean?
  inputBinding:
    prefix: -mono
- id: in_invalid
  doc: "boolean    [N] Decide whether invalid PEST motifs\nshould be printed."
  type: boolean?
  inputBinding:
    prefix: -invalid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _epestfind
