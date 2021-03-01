class: CommandLineTool
id: _extractalign.cwl
inputs:
- id: in_regions
  doc: "range      [Whole sequence] Regions to extract.\nA set of regions is specified\
    \ by a set of\npairs of positions.\nThe positions are integers.\nThey are separated\
    \ by any non-digit,\nnon-alpha character.\nExamples of region specifications are:\n\
    24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean?
  inputBinding:
    prefix: -regions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _extractalign
