class: CommandLineTool
id: _trimseq.cwl
inputs:
- id: in_window
  doc: "integer    [1] This determines the size of the region\nthat is considered\
    \ when deciding whether the\npercentage of ambiguity is greater than the\nthreshold.\
    \ A value of 5 means that a region\nof 5 letters in the sequence is shifted\n\
    along the sequence from the ends and\ntrimming is done only if there is a greater\n\
    or equal percentage of ambiguity than the\nthreshold percentage. (Integer 1 or\
    \ more)"
  type: boolean
  inputBinding:
    prefix: -window
- id: in_percent
  doc: "float      [100.0] This is the threshold of the\npercentage ambiguity in the\
    \ window required\nin order to trim a sequence. (Any numeric\nvalue)"
  type: boolean
  inputBinding:
    prefix: -percent
- id: in_strict
  doc: "boolean    [N] In nucleic sequences, trim off not only\nN's and X's, but also\
    \ the nucleotide IUPAC\nambiguity codes M, R, W, S, Y, K, V, H, D\nand B. In protein\
    \ sequences, trim off not\nonly X's but also B and Z."
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_star
  doc: "boolean    [N] In protein sequences, trim off not only\nX's, but also the\
    \ *'s"
  type: boolean
  inputBinding:
    prefix: -star
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _trimseq
