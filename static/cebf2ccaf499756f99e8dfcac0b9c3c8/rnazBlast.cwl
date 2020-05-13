class: CommandLineTool
id: rnazBlast.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: blast_dir
  doc: The directory with your BLAST database. If not set, the value from the "BLASTDB"
    environment variable is used.
  type: string
  inputBinding:
    prefix: --blast-dir
- id: database
  doc: Name of the BLAST database to compare with. Must exist in the directory set
    with "--blast-dir" or in the directory set by "BLASTDB".
  type: string
  inputBinding:
    prefix: --database
- id: seq_dir
  doc: Directory with sequence files. For each sequence identifier in your input file
    you need to have a corresponding FASTA formatted file. The files should be named
    with the sequence identifier and the extension ".fa" or ".fasta". If your identifier
    in your input file is for example "contig100" then you should have a file named
    "contig100.fa". (If your identifier is of the form ``assembly.chromosome" as for
    example used by UCSC alignments, it is also possible to name the file "chr22.fa"
    for a sequence identifier "hg17.chr22").
  type: string
  inputBinding:
    prefix: --seq-dir
- id: e_value
  doc: 'E-value cutoff. All hits with E < X are reported. (Default: 1e-06)'
  type: string
  inputBinding:
    prefix: --e-value
- id: man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnazBlast.pl
