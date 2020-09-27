class: CommandLineTool
id: bp_bulk_load_gff.pl.cwl
inputs:
- id: in_of__database
  doc: of --database.
  type: string
  inputBinding:
    prefix: -d
- id: in_database
  doc: Database name (default dbi:mysql:test)
  type: string
  inputBinding:
    prefix: --database
- id: in_adaptor
  doc: Adaptor name (default mysql)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: in_create
  doc: Reinitialize/create data tables without asking
  type: boolean
  inputBinding:
    prefix: --create
- id: in_user
  doc: Username to log in as
  type: boolean
  inputBinding:
    prefix: --user
- id: in_fast_a
  doc: File or directory containing fasta files to load
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_long_list
  doc: "Directory containing a very large number of\nGFF and/or FASTA files"
  type: boolean
  inputBinding:
    prefix: --long_list
- id: in_password
  doc: "Password to use for authentication\n(Does not work with Postgres, password\
    \ must be\nsupplied interactively or be left empty for\nident authentication)"
  type: boolean
  inputBinding:
    prefix: --password
- id: in_max_bin
  doc: Set the value of the maximum bin size
  type: boolean
  inputBinding:
    prefix: --maxbin
- id: in_local
  doc: Flag to indicate that the data source is local
  type: boolean
  inputBinding:
    prefix: --local
- id: in_max_feature
  doc: Set the value of the maximum feature size (power of 10)
  type: boolean
  inputBinding:
    prefix: --maxfeature
- id: in_group
  doc: "A list of one or more tag names (comma or space separated)\nto be used for\
    \ grouping in the 9th column."
  type: boolean
  inputBinding:
    prefix: --group
- id: in_gff_three_munge
  doc: Activate GFF3 name munging (see Bio::DB::GFF)
  type: boolean
  inputBinding:
    prefix: --gff3_munge
- id: in_summary
  doc: "Generate summary statistics for drawing coverage histograms.\nThis can be\
    \ run on a previously loaded database or during\nthe load."
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_temporary
  doc: Location of a writable scratch directory
  type: boolean
  inputBinding:
    prefix: --Temporary
- id: in_notes
  doc: "If the filename is given as \"-\" then the input is taken from standard\n\
    input. Compressed files (.gz, .Z, .bz2) are automatically uncompressed.\nFASTA\
    \ format files are distinguished from GFF files by their filename\nextensions.\
    \ Files ending in .fa, .fasta, .fast, .seq, .dna and their\nuppercase variants\
    \ are treated as FASTA files. Everything else is\ntreated as a GFF file. If you\
    \ wish to load -fasta files from STDIN, then\nuse the -f command-line swith with\
    \ an argument of '-', as in\ngunzip my_data.fa.gz | bp_fast_load_gff.pl -d test\
    \ -f -\nThe nature of the bulk load requires that the database be on the local\n\
    machine and that the indicated user have the \"file\" privilege to load\nthe tables\
    \ and have enough room in /usr/tmp (or whatever is specified by\nthe \\$TMPDIR\
    \ environment variable), to hold the tables transiently.\nLocal data may now be\
    \ uploaded to a remote server via the --local option\nwith the database host specified\
    \ in the dsn, e.g. dbi:mysql:test:db_host\nThe adaptor used is dbi::mysqlopt.\
    \ There is currently no way to change\nthis.\nAbout maxfeature: the default value\
    \ is 100,000,000 bases. If you have\nfeatures that are close to or greater that\
    \ 100Mb in length, then the\nvalue of maxfeature should be increased to 1,000,000,000.\
    \ This value\nmust be a power of 10.\nNote that Windows users must use the --create\
    \ option.\nIf the list of GFF or fasta files exceeds the kernel limit for the\n\
    maximum number of command-line arguments, use the --long_list\n/path/to/files\
    \ option."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_bulk_load_gff.pl
