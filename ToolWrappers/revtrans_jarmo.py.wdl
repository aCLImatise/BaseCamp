version 1.0

task RevtransJarmopy {
  input {
    String? gap_in
    String? gap_out
    File? i_dna
    File? i_pep
    File? specify_format_output
    File? mtx
    Boolean? all_internal
    Boolean? read_through_stop
    String? match
    Boolean? verbose_print_extra
    String ncbi_genetic_codes_do_tpy
  }
  command <<<
    revtrans_jarmo_py \
      ~{ncbi_genetic_codes_do_tpy} \
      ~{if defined(gap_in) then ("-gapin " +  '"' + gap_in + '"') else ""} \
      ~{if defined(gap_out) then ("-gapout " +  '"' + gap_out + '"') else ""} \
      ~{if defined(i_dna) then ("-Idna " +  '"' + i_dna + '"') else ""} \
      ~{if defined(i_pep) then ("-Ipep " +  '"' + i_pep + '"') else ""} \
      ~{if defined(specify_format_output) then ("-O " +  '"' + specify_format_output + '"') else ""} \
      ~{if defined(mtx) then ("-mtx " +  '"' + mtx + '"') else ""} \
      ~{if (all_internal) then "-allinternal" else ""} \
      ~{if (read_through_stop) then "-readthroughstop" else ""} \
      ~{if defined(match) then ("-match " +  '"' + match + '"') else ""} \
      ~{if (verbose_print_extra) then "-v" else ""}
  >>>
  parameter_meta {
    gap_in: "Specify gap characters in the input sequences.\\nDefault is '.-~'"
    gap_out: "Specify which character should be used for gaps in the\\noutput.\\nDefault is '-'"
    i_dna: "Specify format of the input DNA file.\\nValid formats are: auto (default), fasta, msf and aln"
    i_pep: "Specify format of the input peptide file.\\nValid formats are: auto (default), fasta, msf and aln"
    specify_format_output: "Specify format of the output file.\\nValid formats are: fasta (default), msf and aln"
    mtx: "Use alternative translation matrix instead of the build-in\\nStandard Genetic Code for translation.\\nIf \\\"tablename\\\" is 1-6,9-16 or 21-23 one of the alternative\\ntranslation tables defined by the NCBI taxonomy group will be\\nused.\\nBriefly, the following tables are defined:\\n-----------------------------------------\\n1: The Standard Code\\n2: The Vertebrate Mitochondrial Code\\n3: The Yeast Mitochondrial Code\\n4: The Mold, Protozoan, and Coelenterate Mitochondrial Code\\nand the Mycoplasma/Spiroplasma Code\\n5: The Invertebrate Mitochondrial Code\\n6: The Ciliate, Dasycladacean and Hexamita Nuclear Code\\n9: The Echinoderm and Flatworm Mitochondrial Code\\n10: The Euplotid Nuclear Code\\n11: The Bacterial and Plant Plastid Code\\n12: The Alternative Yeast Nuclear Code\\n13: The Ascidian Mitochondrial Code\\n14: The Alternative Flatworm Mitochondrial Code\\n15: Blepharisma Nuclear Code\\n16: Chlorophycean Mitochondrial Code\\n21: Trematode Mitochondrial Code\\n22: Scenedesmus obliquus mitochondrial Code\\n23: Thraustochytrium Mitochondrial Code\\nSee http://www.ncbi.nlm.nih.gov/Taxonomy [Genetic Codes]\\nfor a detailed description. Please notice that the table\\nof start codons is also used (see the -allinternal option\\nbelow for details).\\nIf a filename is supplied the translation table is read from\\nfile instead.\\nThe file should contain one line per codon in the format:\\ncodon<whitespace>aa-single letter code\\nAll 64 codons must be included. Stop codons is specified\\nby \\\"*\\\". T and U is interchangeable. Blank lines and lines\\nstarting with \\\"#\\\" are ignored.\\nSee the \\\"gcMitVertebrate.mtx\\\" file in the RevTrans source\\ndistribution for a well documented example."
    all_internal: "By default the very first codon in each sequences is assumed\\nto be the initial codon on the transcript. This means certain\\nnon-methionine codons actually codes for metionine at this\\nposition. For example \\\"TTG\\\" in the standard genetic code (see\\nabove).\\nSelecting this option treats all codons as internal codons."
    read_through_stop: "Allow the translation to continue after a stop codon is reached.\\nThe stop codon will be marked as \\\"*\\\".\\nBe careful that stop codons have been addressed in the same manner\\nin the input peptide alignment."
    match: "Specify how to match the corresponding DNA and peptide\\nsequences. Valid methods are: trans (default), name and pos.\\nPlease note that both DNA and peptide sequence should have\\nunique names, regardless of the matching method.\\ntrans:\\nMatch sequences by translation. The DNA sequences are\\ntranslated using the standard genetic code (default)\\nor an alternative translation matrix if the -mtx\\noption is used.\\nname:\\nMatch sequences by name. Please note that for FASTA\\nfiles everything after the \\\">\\\" is considered the\\nsequence name.\\npos:\\nMatch by position. The sequence are matched by position\\nin the files (first DNA sequence with first peptide\\nsequence etc.)."
    verbose_print_extra: "Verbose. Print extra information about files, sequences\\nand the progress in general to STDERR.\\nThe verbose level can be set to three degrees of\\ndetail.\\n-v:   verbose level 1\\nInfo about files, number of sequences read etc.\\nUse this as the first try if something needs\\ninvestigation.\\n-vv:  verbose level 2\\nAs level 1 +\\nPrint detailed info about all the sequence names.\\n-vvv: verbose level 3\\nAs level 2 +\\nDo a sanity check on the degapped length of the\\nsequences. Warn if the sizes do not match."
    ncbi_genetic_codes_do_tpy: "WEB PAGE"
  }
  output {
    File out_stdout = stdout()
    File out_specify_format_output = "${in_specify_format_output}"
  }
}