class: CommandLineTool
id: bp_load_gff.pl.cwl
inputs:
- id: notes
  doc: "If the filename is given as \"-\" then the input is taken from standard input.\
    \ Compressed files (.gz, .Z, .bz2) are automatically uncompressed. FASTA format\
    \ files are distinguished from GFF files by their filename extensions. Files ending\
    \ in .fa, .fasta, .fast, .seq, .dna and their uppercase variants are treated as\
    \ FASTA files. Everything else is treated as a GFF file. If you wish to load -fasta\
    \ files from STDIN, then use the -f command-line swith with an argument of '-',\
    \ as in gunzip my_data.fa.gz | bp_fast_load_gff.pl -d test -f - On the first load\
    \ of a database, you will see a number of \"unknown table\" errors. This is normal.\
    \ About maxfeature: the default value is 100,000,000 bases. If you have features\
    \ that are close to or greater that 100Mb in length, then the value of maxfeature\
    \ should be increased to 1,000,000,000, or another power of 10."
  type: string
  inputBinding:
    position: 0
- id: d
  doc: of --database.
  type: string
  inputBinding:
    prefix: -d
- id: dsn
  doc: <dsn>       Data source (default dbi:mysql:test)
  type: boolean
  inputBinding:
    prefix: --dsn
- id: adaptor
  doc: Schema adaptor (default dbi::mysqlopt)
  type: string
  inputBinding:
    prefix: --adaptor
- id: user
  doc: <user>      Username for mysql authentication
  type: boolean
  inputBinding:
    prefix: --user
- id: pass
  doc: <password>  Password for mysql authentication
  type: boolean
  inputBinding:
    prefix: --pass
- id: fast_a
  doc: <path>      Fasta file or directory containing fasta files for the DNA
  type: boolean
  inputBinding:
    prefix: --fasta
- id: create
  doc: Force creation and initialization of database
  type: boolean
  inputBinding:
    prefix: --create
- id: max_feature
  doc: Set the value of the maximum feature size (default 100 Mb; must be a power
    of 10)
  type: boolean
  inputBinding:
    prefix: --maxfeature
- id: group
  doc: A list of one or more tag names (comma or space separated) to be used for grouping
    in the 9th column.
  type: boolean
  inputBinding:
    prefix: --group
- id: upgrade
  doc: Upgrade existing database to current schema
  type: boolean
  inputBinding:
    prefix: --upgrade
- id: gff3_munge
  doc: Activate GFF3 name munging (see Bio::DB::GFF)
  type: boolean
  inputBinding:
    prefix: --gff3_munge
- id: quiet
  doc: No progress reports
  type: boolean
  inputBinding:
    prefix: --quiet
- id: summary
  doc: Generate summary statistics for drawing coverage histograms. This can be run
    on a previously loaded database or during the load.
  type: boolean
  inputBinding:
    prefix: --summary
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_load_gff.pl
