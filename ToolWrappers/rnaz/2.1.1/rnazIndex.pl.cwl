class: CommandLineTool
id: rnazIndex.pl.cwl
inputs:
- id: in_gff
  doc: Generate GFF formatted output.
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_bed
  doc: Generate BED formatted output.
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_label__col
  doc: "#:LABEL, --col #:LABEL\nAppend a column named LABEL to the HTML-table holding\
    \ the data\nfrom the input file column with index #. e.g. \"rnazIndex.pl\n--html\
    \ --col 19:Alifoldz --col 20:RNAmicro annotated.dat\""
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_fast_a
  doc: "Get sequences in FASTA format for loci or windows. See options\n\"--seq-dir\"\
    , \"--forward\", \"--reverse\"!"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_seq_dir
  doc: "Directory with sequence files. You only need this for FASTA\noutput (see option\
    \ \"--fasta\"). The files should be named with\nthe sequence identifier and the\
    \ extension \".fa\" or \".fasta\". If\nyour identifier in your input file is for\
    \ example \"contig100\"\nthen you should have a file named \"contig100.fa\". (If\
    \ your\nidentifier is of the form ``assembly.chromosome\" as for example\nused\
    \ by UCSC alignments, it is also possible to name the file\n\"chr22.fa\" for a\
    \ sequence identifier \"hg17.chr22\")."
  type: boolean?
  inputBinding:
    prefix: --seq-dir
- id: in_forward
  doc: "Only relevant for FASTA output (see option \"--fasta\"). You can\nset if you\
    \ want the forward or reverse complement of the\nsequence corresponding to a locus.\
    \ Since loci don't have strand\ninformation you might consider both strands for\
    \ further\nanalysis. Windows have strand information, so if you export\nwindows\
    \ as FASTA these options are ignored."
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_ucsc
  doc: "In UCSC MAF alignment files it is common to use sequence\nidentifiers like\
    \ for example ``hg17.chr22\". However, in BED are\nusually specific for a given\
    \ assembly and therefore only\n``chr22\" is used in the BED files. With this option\
    \ you change\nany identifier of the form ``X.Y\" into ``Y\". Moreover, the\nscores\
    \ are multiplied by 1000 and rounded to integers since the\nUCSC genome browser\
    \ expects scores between 0 and 1000."
  type: boolean?
  inputBinding:
    prefix: --ucsc
- id: in_loci
  doc: "Use the locus information to generate the lines for the GFF and\nBED files.\
    \ This is the default."
  type: boolean?
  inputBinding:
    prefix: --loci
- id: in_windows
  doc: "Print the \"windows\" and not the \"loci\". Probably, rarely used\nfunction."
  type: boolean?
  inputBinding:
    prefix: --windows
- id: in_html
  doc: "With this option you get a HTML table which links to the the\nHTML pages which\
    \ you can create by using the \"--html\" option in\n\"rnazCluster.pl\". Redirect\
    \ the output to some file which resides\nin the \"results\" directory created\
    \ by \"rnazCluster.pl\" and open\nthe file with your favourite web-browser."
  type: File?
  inputBinding:
    prefix: --html
- id: in_man
  doc: Prints a detailed manual page and exits.
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html
  doc: "With this option you get a HTML table which links to the the\nHTML pages which\
    \ you can create by using the \"--html\" option in\n\"rnazCluster.pl\". Redirect\
    \ the output to some file which resides\nin the \"results\" directory created\
    \ by \"rnazCluster.pl\" and open\nthe file with your favourite web-browser."
  type: File?
  outputBinding:
    glob: $(inputs.in_html)
hints: []
cwlVersion: v1.1
baseCommand:
- rnazIndex.pl
