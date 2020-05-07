class: CommandLineTool
id: bp_bulk_load_gff.pl.cwl
inputs:
- id: notes
  doc: "If the filename is given as \"-\" then the input is taken from standard input.\
    \ Compressed files (.gz, .Z, .bz2) are automatically uncompressed. FASTA format\
    \ files are distinguished from GFF files by their filename extensions. Files ending\
    \ in .fa, .fasta, .fast, .seq, .dna and their uppercase variants are treated as\
    \ FASTA files. Everything else is treated as a GFF file. If you wish to load -fasta\
    \ files from STDIN, then use the -f command-line swith with an argument of '-',\
    \ as in gunzip my_data.fa.gz | bp_fast_load_gff.pl -d test -f - The nature of\
    \ the bulk load requires that the database be on the local machine and that the\
    \ indicated user have the \"file\" privilege to load the tables and have enough\
    \ room in /usr/tmp (or whatever is specified by the \\$TMPDIR environment variable),\
    \ to hold the tables transiently. Local data may now be uploaded to a remote server\
    \ via the --local option with the database host specified in the dsn, e.g. dbi:mysql:test:db_host\
    \ The adaptor used is dbi::mysqlopt. There is currently no way to change this.\
    \ About maxfeature: the default value is 100,000,000 bases. If you have features\
    \ that are close to or greater that 100Mb in length, then the value of maxfeature\
    \ should be increased to 1,000,000,000. This value must be a power of 10. Note\
    \ that Windows users must use the --create option. If the list of GFF or fasta\
    \ files exceeds the kernel limit for the maximum number of command-line arguments,\
    \ use the --long_list /path/to/files option."
  type: string
  inputBinding:
    position: 0
- id: d
  doc: of --database.
  type: string
  inputBinding:
    prefix: -d
- id: database
  doc: Database name (default dbi:mysql:test)
  type: string
  inputBinding:
    prefix: --database
- id: adaptor
  doc: Adaptor name (default mysql)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: create
  doc: Reinitialize/create data tables without asking
  type: boolean
  inputBinding:
    prefix: --create
- id: user
  doc: Username to log in as
  type: boolean
  inputBinding:
    prefix: --user
- id: fast_a
  doc: File or directory containing fasta files to load
  type: boolean
  inputBinding:
    prefix: --fasta
- id: long_list
  doc: Directory containing a very large number of  GFF and/or FASTA files
  type: boolean
  inputBinding:
    prefix: --long_list
- id: password
  doc: Password to use for authentication (Does not work with Postgres, password must
    be supplied interactively or be left empty for ident authentication)
  type: boolean
  inputBinding:
    prefix: --password
- id: max_bin
  doc: Set the value of the maximum bin size
  type: boolean
  inputBinding:
    prefix: --maxbin
- id: local
  doc: Flag to indicate that the data source is local
  type: boolean
  inputBinding:
    prefix: --local
- id: max_feature
  doc: Set the value of the maximum feature size (power of 10)
  type: boolean
  inputBinding:
    prefix: --maxfeature
- id: group
  doc: A list of one or more tag names (comma or space separated) to be used for grouping
    in the 9th column.
  type: boolean
  inputBinding:
    prefix: --group
- id: gff3_munge
  doc: Activate GFF3 name munging (see Bio::DB::GFF)
  type: boolean
  inputBinding:
    prefix: --gff3_munge
- id: summary
  doc: Generate summary statistics for drawing coverage histograms. This can be run
    on a previously loaded database or during the load.
  type: boolean
  inputBinding:
    prefix: --summary
- id: temporary
  doc: Location of a writable scratch directory
  type: boolean
  inputBinding:
    prefix: --Temporary
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_bulk_load_gff.pl
