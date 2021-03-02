class: CommandLineTool
id: pslPartition.cwl
inputs:
- id: in_out_levels
  doc: "- number of output subdirectory levels.  0 puts all files\ndirectly in outDir,\
    \ 2, will create files in the form outDir/0/0/00.psl"
  type: long?
  inputBinding:
    prefix: -outLevels
- id: in_part_size
  doc: "- will combine non-overlapping partitions, while attempting\nto keep them\
    \ under this number of PSLs.  This reduces the number of\nfiles that are created\
    \ while ensuring that there are no overlaps\nbetween any two PSL files.  A value\
    \ of 0 creates a PSL file per set of\noverlapping PSLs."
  type: long?
  inputBinding:
    prefix: -partSize
- id: in_drop_contained
  doc: "- drop PSLs that are completely contained in a block of\nanother PSL.\n"
  type: boolean?
  inputBinding:
    prefix: -dropContained
- id: in_psl_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslPartition
