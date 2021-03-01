class: CommandLineTool
id: _maskseq.cwl
inputs:
- id: in_regions
  doc: "range      [None] Regions to mask.\nA set of regions is specified by a set\
    \ of\npairs of positions.\nThe positions are integers.\nThey are separated by\
    \ any non-digit,\nnon-alpha character.\nExamples of region specifications are:\n\
    24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean?
  inputBinding:
    prefix: -regions
- id: in_to_lower
  doc: "toggle     [N] The region can be 'masked' by converting\nthe sequence characters\
    \ to lower-case, some\nnon-EMBOSS programs e.g. fasta can\ninterpret this as a\
    \ masked region. The\nsequence is unchanged apart from the case\nchange. You might\
    \ like to ensure that the\nwhole sequence is in upper-case before\nmasking the\
    \ specified regions to lower-case\nby using the '-supper' flag."
  type: boolean?
  inputBinding:
    prefix: -tolower
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _maskseq
