class: CommandLineTool
id: rnazIndex.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: gff
  doc: Generate GFF formatted output.
  type: boolean
  inputBinding:
    prefix: --gff
- id: bed
  doc: Generate BED formatted output.
  type: boolean
  inputBinding:
    prefix: --bed
- id: c
  doc: '#:LABEL, --col #:LABEL Append a column named LABEL to the HTML-table holding
    the data from the input file column with index #. e.g. "rnazIndex.pl --html --col
    19:Alifoldz --col 20:RNAmicro annotated.dat"'
  type: boolean
  inputBinding:
    prefix: -c
- id: fast_a
  doc: Get sequences in FASTA format for loci or windows. See options "--seq-dir",
    "--forward", "--reverse"!
  type: boolean
  inputBinding:
    prefix: --fasta
- id: seq_dir
  doc: Directory with sequence files. You only need this for FASTA output (see option
    "--fasta"). The files should be named with the sequence identifier and the extension
    ".fa" or ".fasta". If your identifier in your input file is for example "contig100"
    then you should have a file named "contig100.fa". (If your identifier is of the
    form ``assembly.chromosome" as for example used by UCSC alignments, it is also
    possible to name the file "chr22.fa" for a sequence identifier "hg17.chr22").
  type: boolean
  inputBinding:
    prefix: --seq-dir
- id: forward
  doc: Only relevant for FASTA output (see option "--fasta"). You can set if you want
    the forward or reverse complement of the sequence corresponding to a locus. Since
    loci don't have strand information you might consider both strands for further
    analysis. Windows have strand information, so if you export windows as FASTA these
    options are ignored.
  type: boolean
  inputBinding:
    prefix: --forward
- id: ucsc
  doc: In UCSC MAF alignment files it is common to use sequence identifiers like for
    example ``hg17.chr22". However, in BED are usually specific for a given assembly
    and therefore only ``chr22" is used in the BED files. With this option you change
    any identifier of the form ``X.Y" into ``Y". Moreover, the scores are multiplied
    by 1000 and rounded to integers since the UCSC genome browser expects scores between
    0 and 1000.
  type: boolean
  inputBinding:
    prefix: --ucsc
- id: loci
  doc: Use the locus information to generate the lines for the GFF and BED files.
    This is the default.
  type: boolean
  inputBinding:
    prefix: --loci
- id: windows
  doc: Print the "windows" and not the "loci". Probably, rarely used function.
  type: boolean
  inputBinding:
    prefix: --windows
- id: html
  doc: With this option you get a HTML table which links to the the HTML pages which
    you can create by using the "--html" option in "rnazCluster.pl". Redirect the
    output to some file which resides in the "results" directory created by "rnazCluster.pl"
    and open the file with your favourite web-browser.
  type: boolean
  inputBinding:
    prefix: --html
- id: man
  doc: Prints a detailed manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazIndex.pl
