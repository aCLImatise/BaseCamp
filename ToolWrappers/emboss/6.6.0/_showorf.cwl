class: CommandLineTool
id: _showorf.cwl
inputs:
- id: in_frames
  doc: "menu       [1,2,3,4,5,6] Select one or more values\n(Values: 0 (None); 1 (F1);\
    \ 2 (F2); 3 (F3); 4\n(R1); 5 (R2); 6 (R3))"
  type: boolean
  inputBinding:
    prefix: -frames
- id: in_table
  doc: "menu       [0] Genetic code to use (Values: 0\n(Standard); 1 (Standard (with\
    \ alternative\ninitiation codons)); 2 (Vertebrate\nMitochondrial); 3 (Yeast Mitochondrial);\
    \ 4\n(Mold, Protozoan, Coelenterate Mitochondrial\nand Mycoplasma/Spiroplasma);\
    \ 5\n(Invertebrate Mitochondrial); 6 (Ciliate\nMacronuclear and Dasycladacean);\
    \ 9\n(Echinoderm Mitochondrial); 10 (Euplotid\nNuclear); 11 (Bacterial); 12 (Alternative\n\
    Yeast Nuclear); 13 (Ascidian Mitochondrial);\n14 (Flatworm Mitochondrial); 15\n\
    (Blepharisma Macronuclear); 16\n(Chlorophycean Mitochondrial); 21 (Trematode\n\
    Mitochondrial); 22 (Scenedesmus obliquus);\n23 (Thraustochytrium Mitochondrial))"
  type: boolean
  inputBinding:
    prefix: -table
- id: in_width
  doc: integer    [50] Width of screen (Integer 10 or more)
  type: boolean
  inputBinding:
    prefix: -width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _showorf
