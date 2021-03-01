class: CommandLineTool
id: tranalign.cwl
inputs:
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
- tranalign
