class: CommandLineTool
id: plotcon.cwl
inputs:
- id: in_winsize
  doc: "integer    [4] Number of columns to average alignment\nquality over. The larger\
    \ this value is, the\nsmoother the plot will be. (Any integer\nvalue)"
  type: boolean
  inputBinding:
    prefix: -winsize
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean
  inputBinding:
    prefix: -graph
- id: in_score_file
  doc: "matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring\
    \ matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62'\
    \ (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles\
    \ are found in the 'data' directory of\nthe EMBOSS installation."
  type: boolean
  inputBinding:
    prefix: -scorefile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plotcon
