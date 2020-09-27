class: CommandLineTool
id: _diffseq.cwl
inputs:
- id: in_word_size
  doc: "integer    [10] The similar regions between the two\nsequences are found by\
    \ creating a hash table\nof 'wordsize'd subsequences. 10 is a\nreasonable default.\
    \ Making this value larger\n(20?) may speed up the program slightly,\nbut will\
    \ mean that any two differences\nwithin 'wordsize' of each other will be\ngrouped\
    \ as a single region of difference.\nThis value may be made smaller (4?) to\n\
    improve the resolution of nearby\ndifferences, but the program will go much\n\
    slower. (Integer 2 or more)"
  type: boolean
  inputBinding:
    prefix: -wordsize
- id: in_global_differences
  doc: "boolean    [N] Normally this program will find regions\nof identity that are\
    \ the length of the\nspecified word-size or greater and will then\nreport the\
    \ regions of difference between\nthese matching regions. This works well and\n\
    is what most people want if they are working\nwith long overlapping nucleic acid\n\
    sequences. You are usually not interested in\nthe non-overlapping ends of these\n\
    sequences. If you have protein sequences or\nshort RNA sequences however, you\
    \ will be\ninterested in differences at the very ends .\nIt this option is set\
    \ to be true then the\ndifferences at the ends will also be\nreported."
  type: boolean
  inputBinding:
    prefix: -globaldifferences
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _diffseq
