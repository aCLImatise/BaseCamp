class: CommandLineTool
id: extractseq.cwl
inputs:
- id: in_regions
  doc: "range      [Whole sequence] Regions to extract.\nA set of regions is specified\
    \ by a set of\npairs of positions.\nThe positions are integers.\nThey are separated\
    \ by any non-digit,\nnon-alpha character.\nExamples of region specifications are:\n\
    24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean?
  inputBinding:
    prefix: -regions
- id: in_separate
  doc: "boolean    [N] If this is set true then each specified\nregion is written\
    \ out as a separate\nsequence. The name of the sequence is\ncreated from the name\
    \ of the original\nsequence with the start and end positions of\nthe range appended\
    \ with underscore\ncharacters between them, eg: XYZ region 2 to\n34 is written\
    \ as: XYZ_2_34"
  type: boolean?
  inputBinding:
    prefix: -separate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extractseq
