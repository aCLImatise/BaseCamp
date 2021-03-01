version 1.0

task Getorf {
  input {
    Boolean? table
    Boolean? minsize
    Boolean? maxsize
    Boolean? find
    Boolean? circular
    Boolean? flanking
  }
  command <<<
    getorf \
      ~{if (table) then "-table" else ""} \
      ~{if (minsize) then "-minsize" else ""} \
      ~{if (maxsize) then "-maxsize" else ""} \
      ~{if (find) then "-find" else ""} \
      ~{if (circular) then "-circular" else ""} \
      ~{if (flanking) then "-flanking" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    table: "menu       [0] Code to use (Values: 0 (Standard); 1\\n(Standard (with alternative initiation\\ncodons)); 2 (Vertebrate Mitochondrial); 3\\n(Yeast Mitochondrial); 4 (Mold, Protozoan,\\nCoelenterate Mitochondrial and\\nMycoplasma/Spiroplasma); 5 (Invertebrate\\nMitochondrial); 6 (Ciliate Macronuclear and\\nDasycladacean); 9 (Echinoderm\\nMitochondrial); 10 (Euplotid Nuclear); 11\\n(Bacterial); 12 (Alternative Yeast Nuclear);\\n13 (Ascidian Mitochondrial); 14 (Flatworm\\nMitochondrial); 15 (Blepharisma\\nMacronuclear); 16 (Chlorophycean\\nMitochondrial); 21 (Trematode\\nMitochondrial); 22 (Scenedesmus obliquus);\\n23 (Thraustochytrium Mitochondrial))"
    minsize: "integer    [30] Minimum nucleotide size of ORF to\\nreport (Any integer value)"
    maxsize: "integer    [1000000] Maximum nucleotide size of ORF to\\nreport (Any integer value)"
    find: "menu       [0] This is a small menu of possible output\\noptions. The first four options are to\\nselect either the protein translation or the\\noriginal nucleic acid sequence of the open\\nreading frame. There are two possible\\ndefinitions of an open reading frame: it can\\neither be a region that is free of STOP\\ncodons or a region that begins with a START\\ncodon and ends with a STOP codon. The last\\nthree options are probably only of interest\\nto people who wish to investigate the\\nstatistical properties of the regions around\\npotential START or STOP codons. The last\\noption assumes that ORF lengths are\\ncalculated between two STOP codons. (Values:\\n0 (Translation of regions between STOP\\ncodons); 1 (Translation of regions between\\nSTART and STOP codons); 2 (Nucleic sequences\\nbetween STOP codons); 3 (Nucleic sequences\\nbetween START and STOP codons); 4\\n(Nucleotides flanking START codons); 5\\n(Nucleotides flanking initial STOP codons);\\n6 (Nucleotides flanking ending STOP codons))"
    circular: "boolean    [N] Is the sequence circular"
    flanking: "integer    [100] If you have chosen one of the options\\nof the type of sequence to find that gives\\nthe flanking sequence around a STOP or START\\ncodon, this allows you to set the number of\\nnucleotides either side of that codon to\\noutput. If the region of flanking\\nnucleotides crosses the start or end of the\\nsequence, no output is given for this codon.\\n(Any integer value)"
  }
  output {
    File out_stdout = stdout()
  }
}