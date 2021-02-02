class: CommandLineTool
id: _sixpack.cwl
inputs:
- id: in_out_seq
  doc: seqoutall  [<sequence>.<format>] ORF sequence output
  type: boolean
  inputBinding:
    prefix: -outseq
- id: in_table
  doc: "menu       [0] Genetics code used for the translation\n(Values: 0 (Standard);\
    \ 1 (Standard (with\nalternative initiation codons)); 2\n(Vertebrate Mitochondrial);\
    \ 3 (Yeast\nMitochondrial); 4 (Mold, Protozoan,\nCoelenterate Mitochondrial and\n\
    Mycoplasma/Spiroplasma); 5 (Invertebrate\nMitochondrial); 6 (Ciliate Macronuclear\
    \ and\nDasycladacean); 9 (Echinoderm\nMitochondrial); 10 (Euplotid Nuclear); 11\n\
    (Bacterial); 12 (Alternative Yeast Nuclear);\n13 (Ascidian Mitochondrial); 14\
    \ (Flatworm\nMitochondrial); 15 (Blepharisma\nMacronuclear); 16 (Chlorophycean\n\
    Mitochondrial); 21 (Trematode\nMitochondrial); 22 (Scenedesmus obliquus);\n23\
    \ (Thraustochytrium Mitochondrial))"
  type: boolean
  inputBinding:
    prefix: -table
- id: in_or_fm_in_size
  doc: "integer    [1] Minimum protein size of Open Reading\nFrames (ORFs) to display\
    \ in the\ntranslations. (Integer 1 or more)"
  type: boolean
  inputBinding:
    prefix: -orfminsize
- id: in_uppercase
  doc: "range      [If this is left blank, then the sequence\ncase is left alone.]\
    \ Regions to put in\nuppercase.\nIf this is left blank, then the sequence\ncase\
    \ is left alone.\nA set of regions is specified by a set of\npairs of positions.\n\
    The positions are integers.\nThey are separated by any non-digit,\nnon-alpha character.\n\
    Examples of region specifications are:\n24-45, 56-78\n1:45, 67=99;765..888\n1,5,8,10,23,45,57,99"
  type: boolean
  inputBinding:
    prefix: -uppercase
- id: in_highlight
  doc: "range      [(full sequence)] Regions to colour if\nformatting for HTML.\n\
    If this is left blank, then the sequence is\nleft alone.\nA set of regions is\
    \ specified by a set of\npairs of positions.\nThe positions are integers.\nThey\
    \ are followed by any valid HTML font\ncolour.\nExamples of region specifications\
    \ are:\n24-45 blue 56-78 orange\n1-100 green 120-156 red\nA file of ranges to\
    \ colour (one range per\nline) can be specified as '@filename'."
  type: boolean
  inputBinding:
    prefix: -highlight
- id: in_width
  doc: "integer    [60] Number of nucleotides displayed on each\nline (Integer 1 or\
    \ more)"
  type: boolean
  inputBinding:
    prefix: -width
- id: in_length
  doc: "integer    [0] Line length of page (0 for indefinite)\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -length
- id: in_margin
  doc: "integer    [10] Margin around sequence for numbering.\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -margin
- id: in_offset
  doc: "integer    [1] Number from which you want the DNA\nsequence to be numbered.\
    \ (Any integer value)"
  type: boolean
  inputBinding:
    prefix: -offset
- id: in_html
  doc: boolean    [N] Use HTML formatting
  type: boolean
  inputBinding:
    prefix: -html
- id: in_size_dot
  doc: -mstart             boolean    [N] Displays only ORFs starting with an M.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _sixpack
