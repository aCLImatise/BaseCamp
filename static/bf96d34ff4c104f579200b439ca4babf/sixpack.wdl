version 1.0

task Sixpack {
  input {
    Boolean? out_seq
    Boolean? table
    Boolean? or_fm_in_size
    Boolean? uppercase
    Boolean? highlight
    Boolean? width
    Boolean? length
    Boolean? margin
    Boolean? offset
    Boolean? html
    Int size_dot
  }
  command <<<
    sixpack \
      ~{size_dot} \
      ~{if (out_seq) then "-outseq" else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (or_fm_in_size) then "-orfminsize" else ""} \
      ~{if (uppercase) then "-uppercase" else ""} \
      ~{if (highlight) then "-highlight" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (margin) then "-margin" else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (html) then "-html" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_seq: "seqoutall  [<sequence>.<format>] ORF sequence output"
    table: "menu       [0] Genetics code used for the translation\\n(Values: 0 (Standard); 1 (Standard (with\\nalternative initiation codons)); 2\\n(Vertebrate Mitochondrial); 3 (Yeast\\nMitochondrial); 4 (Mold, Protozoan,\\nCoelenterate Mitochondrial and\\nMycoplasma/Spiroplasma); 5 (Invertebrate\\nMitochondrial); 6 (Ciliate Macronuclear and\\nDasycladacean); 9 (Echinoderm\\nMitochondrial); 10 (Euplotid Nuclear); 11\\n(Bacterial); 12 (Alternative Yeast Nuclear);\\n13 (Ascidian Mitochondrial); 14 (Flatworm\\nMitochondrial); 15 (Blepharisma\\nMacronuclear); 16 (Chlorophycean\\nMitochondrial); 21 (Trematode\\nMitochondrial); 22 (Scenedesmus obliquus);\\n23 (Thraustochytrium Mitochondrial))"
    or_fm_in_size: "integer    [1] Minimum protein size of Open Reading\\nFrames (ORFs) to display in the\\ntranslations. (Integer 1 or more)"
    uppercase: "range      [If this is left blank, then the sequence\\ncase is left alone.] Regions to put in\\nuppercase.\\nIf this is left blank, then the sequence\\ncase is left alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are separated by any non-digit,\\nnon-alpha character.\\nExamples of region specifications are:\\n24-45, 56-78\\n1:45, 67=99;765..888\\n1,5,8,10,23,45,57,99"
    highlight: "range      [(full sequence)] Regions to colour if\\nformatting for HTML.\\nIf this is left blank, then the sequence is\\nleft alone.\\nA set of regions is specified by a set of\\npairs of positions.\\nThe positions are integers.\\nThey are followed by any valid HTML font\\ncolour.\\nExamples of region specifications are:\\n24-45 blue 56-78 orange\\n1-100 green 120-156 red\\nA file of ranges to colour (one range per\\nline) can be specified as '@filename'."
    width: "integer    [60] Number of nucleotides displayed on each\\nline (Integer 1 or more)"
    length: "integer    [0] Line length of page (0 for indefinite)\\n(Integer 0 or more)"
    margin: "integer    [10] Margin around sequence for numbering.\\n(Integer 0 or more)"
    offset: "integer    [1] Number from which you want the DNA\\nsequence to be numbered. (Any integer value)"
    html: "boolean    [N] Use HTML formatting"
    size_dot: "-mstart             boolean    [N] Displays only ORFs starting with an M."
  }
  output {
    File out_stdout = stdout()
  }
}