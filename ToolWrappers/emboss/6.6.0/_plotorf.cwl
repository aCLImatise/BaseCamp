class: CommandLineTool
id: _plotorf.cwl
inputs:
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean
  inputBinding:
    prefix: -graph
- id: in_start
  doc: string     [ATG] Start codons (Any string)
  type: boolean
  inputBinding:
    prefix: -start
- id: in_stop
  doc: string     [TAA,TAG,TGA] Stop codons (Any string)
  type: boolean
  inputBinding:
    prefix: -stop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _plotorf
