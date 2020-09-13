version 1.0

task RnazIndexpl {
  input {
    Boolean? gff
    Boolean? bed
    Boolean? label__col
    Boolean? fast_a
    Boolean? seq_dir
    Boolean? forward
    Boolean? ucsc
    Boolean? loci
    Boolean? windows
    File? html
    Boolean? man
  }
  command <<<
    rnazIndex_pl \
      ~{if (gff) then "--gff" else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (label__col) then "-c" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (seq_dir) then "--seq-dir" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if (ucsc) then "--ucsc" else ""} \
      ~{if (loci) then "--loci" else ""} \
      ~{if (windows) then "--windows" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    gff: "Generate GFF formatted output."
    bed: "Generate BED formatted output."
    label__col: "#:LABEL, --col #:LABEL\\nAppend a column named LABEL to the HTML-table holding the data\\nfrom the input file column with index #. e.g. \\\"rnazIndex.pl\\n--html --col 19:Alifoldz --col 20:RNAmicro annotated.dat\\\""
    fast_a: "Get sequences in FASTA format for loci or windows. See options\\n\\\"--seq-dir\\\", \\\"--forward\\\", \\\"--reverse\\\"!"
    seq_dir: "Directory with sequence files. You only need this for FASTA\\noutput (see option \\\"--fasta\\\"). The files should be named with\\nthe sequence identifier and the extension \\\".fa\\\" or \\\".fasta\\\". If\\nyour identifier in your input file is for example \\\"contig100\\\"\\nthen you should have a file named \\\"contig100.fa\\\". (If your\\nidentifier is of the form ``assembly.chromosome\\\" as for example\\nused by UCSC alignments, it is also possible to name the file\\n\\\"chr22.fa\\\" for a sequence identifier \\\"hg17.chr22\\\")."
    forward: "Only relevant for FASTA output (see option \\\"--fasta\\\"). You can\\nset if you want the forward or reverse complement of the\\nsequence corresponding to a locus. Since loci don't have strand\\ninformation you might consider both strands for further\\nanalysis. Windows have strand information, so if you export\\nwindows as FASTA these options are ignored."
    ucsc: "In UCSC MAF alignment files it is common to use sequence\\nidentifiers like for example ``hg17.chr22\\\". However, in BED are\\nusually specific for a given assembly and therefore only\\n``chr22\\\" is used in the BED files. With this option you change\\nany identifier of the form ``X.Y\\\" into ``Y\\\". Moreover, the\\nscores are multiplied by 1000 and rounded to integers since the\\nUCSC genome browser expects scores between 0 and 1000."
    loci: "Use the locus information to generate the lines for the GFF and\\nBED files. This is the default."
    windows: "Print the \\\"windows\\\" and not the \\\"loci\\\". Probably, rarely used\\nfunction."
    html: "With this option you get a HTML table which links to the the\\nHTML pages which you can create by using the \\\"--html\\\" option in\\n\\\"rnazCluster.pl\\\". Redirect the output to some file which resides\\nin the \\\"results\\\" directory created by \\\"rnazCluster.pl\\\" and open\\nthe file with your favourite web-browser."
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
    File out_html = "${in_html}"
  }
}