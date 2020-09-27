class: CommandLineTool
id: bp_load_gff.pl.cwl
inputs:
- id: in_dsn
  doc: "'dbi:mysql:database=dmel_r5_1;host=myhost;port=myport'\ndna1.fa dna2.fa features1.gff\
    \ features2.gff ..."
  type: boolean
  inputBinding:
    prefix: --dsn
- id: in_of__database
  doc: of --database.
  type: string
  inputBinding:
    prefix: -d
- id: in_adaptor
  doc: Schema adaptor (default dbi::mysqlopt)
  type: string
  inputBinding:
    prefix: --adaptor
- id: in_user
  doc: <user>      Username for mysql authentication
  type: boolean
  inputBinding:
    prefix: --user
- id: in_pass
  doc: <password>  Password for mysql authentication
  type: boolean
  inputBinding:
    prefix: --pass
- id: in_fast_a
  doc: <path>      Fasta file or directory containing fasta files for the DNA
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_create
  doc: Force creation and initialization of database
  type: boolean
  inputBinding:
    prefix: --create
- id: in_max_feature
  doc: Set the value of the maximum feature size (default 100 Mb; must be a power
    of 10)
  type: boolean
  inputBinding:
    prefix: --maxfeature
- id: in_group
  doc: "A list of one or more tag names (comma or space separated)\nto be used for\
    \ grouping in the 9th column."
  type: boolean
  inputBinding:
    prefix: --group
- id: in_upgrade
  doc: Upgrade existing database to current schema
  type: boolean
  inputBinding:
    prefix: --upgrade
- id: in_gff_three_munge
  doc: Activate GFF3 name munging (see Bio::DB::GFF)
  type: boolean
  inputBinding:
    prefix: --gff3_munge
- id: in_quiet
  doc: No progress reports
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_summary
  doc: "Generate summary statistics for drawing coverage histograms.\nThis can be\
    \ run on a previously loaded database or during\nthe load."
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_notes
  doc: "If the filename is given as \"-\" then the input is taken from standard\n\
    input. Compressed files (.gz, .Z, .bz2) are automatically uncompressed.\nFASTA\
    \ format files are distinguished from GFF files by their filename\nextensions.\
    \ Files ending in .fa, .fasta, .fast, .seq, .dna and their\nuppercase variants\
    \ are treated as FASTA files. Everything else is\ntreated as a GFF file. If you\
    \ wish to load -fasta files from STDIN, then\nuse the -f command-line swith with\
    \ an argument of '-', as in\ngunzip my_data.fa.gz | bp_fast_load_gff.pl -d test\
    \ -f -\nOn the first load of a database, you will see a number of \"unknown\n\
    table\" errors. This is normal.\nAbout maxfeature: the default value is 100,000,000\
    \ bases. If you have\nfeatures that are close to or greater that 100Mb in length,\
    \ then the\nvalue of maxfeature should be increased to 1,000,000,000, or another\n\
    power of 10."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_load_gff.pl
