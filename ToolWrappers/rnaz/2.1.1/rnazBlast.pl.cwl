class: CommandLineTool
id: rnazBlast.pl.cwl
inputs:
- id: in_blast_dir
  doc: "The directory with your BLAST database. If not set, the value\nfrom the \"\
    BLASTDB\" environment variable is used."
  type: Directory
  inputBinding:
    prefix: --blast-dir
- id: in_database
  doc: "Name of the BLAST database to compare with. Must exist in the\ndirectory set\
    \ with \"--blast-dir\" or in the directory set by\n\"BLASTDB\"."
  type: Directory
  inputBinding:
    prefix: --database
- id: in_seq_dir
  doc: "Directory with sequence files. For each sequence identifier in\nyour input\
    \ file you need to have a corresponding FASTA formatted\nfile. The files should\
    \ be named with the sequence identifier and\nthe extension \".fa\" or \".fasta\"\
    . If your identifier in your\ninput file is for example \"contig100\" then you\
    \ should have a\nfile named \"contig100.fa\". (If your identifier is of the form\n\
    ``assembly.chromosome\" as for example used by UCSC alignments,\nit is also possible\
    \ to name the file \"chr22.fa\" for a sequence\nidentifier \"hg17.chr22\")."
  type: File
  inputBinding:
    prefix: --seq-dir
- id: in_e_value
  doc: "E-value cutoff. All hits with E < X are reported. (Default:\n1e-06)"
  type: double
  inputBinding:
    prefix: --e-value
- id: in_man
  doc: Prints the manual page and exits.
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnazBlast.pl
