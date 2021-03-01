class: CommandLineTool
id: fuzztran.cwl
inputs:
- id: in_pattern
  doc: "pattern    The standard IUPAC one-letter codes for the\namino acids are used.\n\
    The symbol 'x' is used for a position where\nany amino acid is accepted.\nAmbiguities\
    \ are indicated by listing the\nacceptable amino acids for a given position,\n\
    between square parentheses '[ ]'. For\nexample: [ALT] stands for Ala or Leu or\
    \ Thr.\nAmbiguities are also indicated by listing\nbetween a pair of curly brackets\
    \ '{ }' the\namino acids that are not accepted at a gven\nposition. For example:\
    \ {AM} stands for any\namino acid except Ala and Met.\nEach element in a pattern\
    \ is separated from\nits neighbor by a '-'. (Optional in\nfuzztran)\nRepetition\
    \ of an element of the pattern can\nbe indicated by following that element with\n\
    a numerical value or a numerical range\nbetween parenthesis. Examples: x(3)\n\
    corresponds to x-x-x, x(2,4) corresponds to\nx-x or x-x-x or x-x-x-x.\nWhen a\
    \ pattern is restricted to either the\nN- or C-terminal of a sequence, that pattern\n\
    either starts with a '<' symbol or\nrespectively ends with a '>' symbol.\nA period\
    \ ends the pattern. (Optional in\nfuzztran).\nFor example, [DE](2)HS{P}X(2)PX(2,4)C"
  type: boolean?
  inputBinding:
    prefix: -pattern
- id: in_frame
  doc: "menu       [1] Frame(s) to translate (Values: 1 (1); 2\n(2); 3 (3); F (Forward\
    \ three frames); -1\n(-1); -2 (-2); -3 (-3); R (Reverse three\nframes); 6 (All\
    \ six frames))"
  type: boolean?
  inputBinding:
    prefix: -frame
- id: in_table
  doc: "menu       [0] Code to use (Values: 0 (Standard); 1\n(Standard (with alternative\
    \ initiation\ncodons)); 2 (Vertebrate Mitochondrial); 3\n(Yeast Mitochondrial);\
    \ 4 (Mold, Protozoan,\nCoelenterate Mitochondrial and\nMycoplasma/Spiroplasma);\
    \ 5 (Invertebrate\nMitochondrial); 6 (Ciliate Macronuclear and\nDasycladacean);\
    \ 9 (Echinoderm\nMitochondrial); 10 (Euplotid Nuclear); 11\n(Bacterial); 12 (Alternative\
    \ Yeast Nuclear);\n13 (Ascidian Mitochondrial); 14 (Flatworm\nMitochondrial);\
    \ 15 (Blepharisma\nMacronuclear); 16 (Chlorophycean\nMitochondrial); 21 (Trematode\n\
    Mitochondrial); 22 (Scenedesmus obliquus);\n23 (Thraustochytrium Mitochondrial))"
  type: boolean?
  inputBinding:
    prefix: -table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fuzztran
