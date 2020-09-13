version 1.0

task Transeq {
  input {
    Boolean? frame
    Boolean? table
    Boolean? regions
    Boolean? trim
    Boolean? clean
    Boolean? alternative
  }
  command <<<
    _transeq \
      ~{if (frame) then "-frame" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (regions) then "-regions" else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if (alternative) then "-alternative" else ""}
  >>>
  parameter_meta {
    frame: "menu       [1] Frame(s) to translate (Values: 1 (1); 2\\n(2); 3 (3); F (Forward three frames); -1\\n(-1); -2 (-2); -3 (-3); R (Reverse three\\nframes); 6 (All six frames))"
    table: "menu       [0] Code to use (Values: 0 (Standard); 1\\n(Standard (with alternative initiation\\ncodons)); 2 (Vertebrate Mitochondrial); 3\\n(Yeast Mitochondrial); 4 (Mold, Protozoan,\\nCoelenterate Mitochondrial and\\nMycoplasma/Spiroplasma); 5 (Invertebrate\\nMitochondrial); 6 (Ciliate Macronuclear and\\nDasycladacean); 9 (Echinoderm\\nMitochondrial); 10 (Euplotid Nuclear); 11\\n(Bacterial); 12 (Alternative Yeast Nuclear);\\n13 (Ascidian Mitochondrial); 14 (Flatworm\\nMitochondrial); 15 (Blepharisma\\nMacronuclear); 16 (Chlorophycean\\nMitochondrial); 21 (Trematode\\nMitochondrial); 22 (Scenedesmus obliquus);\\n23 (Thraustochytrium Mitochondrial))"
    regions: "range      [Whole sequence] Regions to translate.\\nIf this is left blank, then the complete\\nsequence is translated.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99\\nNote: you should not try to use this option\\nwith any other frame than the default,\\n-frame=1"
    trim: "boolean    [N] This removes all 'X' and '*' characters\\nfrom the right end of the translation. The\\ntrimming process starts at the end and\\ncontinues until the next character is not a\\n'X' or a '*'"
    clean: "boolean    [N] This changes all STOP codon positions\\nfrom the '*' character to 'X' (an unknown\\nresidue). This is useful because some\\nprograms will not accept protein sequences\\nwith '*' characters in them."
    alternative: "boolean    [N] The default definition of frame '-1' is\\nthe reverse-complement of the set of codons\\nused in frame 1. (Frame -2 is the set of\\ncodons used by frame 2, similarly frames -3\\nand 3). This is a common standard, used by\\nthe Staden package and other programs. If\\nyou prefer to define frame '-1' as using the\\nset of codons starting with the last codon\\nof the sequence, then set this to be true."
  }
  output {
    File out_stdout = stdout()
  }
}