class: CommandLineTool
id: bp_seqfeature_load.pl.cwl
inputs:
- id: in_dsn
  doc: DBI data source (default dbi:mysql:test)
  type: boolean?
  inputBinding:
    prefix: --dsn
- id: in_namespace
  doc: "The table prefix to use (default undef) Allows several independent\nsequence\
    \ feature databases to be stored in a single database"
  type: boolean?
  inputBinding:
    prefix: --namespace
- id: in_seqfeature
  doc: "The type of SeqFeature to create... RTSC (default\nBio::DB::SeqFeature)"
  type: boolean?
  inputBinding:
    prefix: --seqfeature
- id: in_adaptor
  doc: The storage adaptor (class) to use (default DBI::mysql)
  type: boolean?
  inputBinding:
    prefix: --adaptor
- id: in_verbose
  doc: "Turn on verbose progress reporting (default true) Use --noverbose to\nswitch\
    \ this off."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fast
  doc: Activate fast loading. (default 0) Only available for some adaptors.
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_temporary_directory
  doc: "Specify temporary directory for fast loading (default\nFile::Spec->tmpdir())"
  type: boolean?
  inputBinding:
    prefix: --temporary-directory
- id: in_ignore_seq_region
  doc: "If true, then ignore ##sequence-region directives in the GFF3 file\n(default,\
    \ create a feature for each region)"
  type: boolean?
  inputBinding:
    prefix: --ignore-seqregion
- id: in_create
  doc: "Create the database and reinitialize it (default false) Note, this\nwill erase\
    \ previous database contents, if any."
  type: boolean?
  inputBinding:
    prefix: --create
- id: in_user
  doc: User to connect to database as
  type: boolean?
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password to use to connect to database
  type: boolean?
  inputBinding:
    prefix: --password
- id: in_zip
  doc: Compress database tables to save space (default false)
  type: boolean?
  inputBinding:
    prefix: --zip
- id: in_sub_features
  doc: "Turn on indexing of subfeatures (default true) Use --nosubfeatures\nto switch\
    \ this off."
  type: boolean?
  inputBinding:
    prefix: --subfeatures
- id: in_fts
  doc: "Index the attribute table for full-text search (default false).\nApplicable\
    \ only when --create is specified. Currently applicable to\nthe DBI::SQLite storage\
    \ adaptor only (using the most recent\nsupported FTS indexing method, which may\
    \ not be portable to older\nDBI::SQLite versions)."
  type: boolean?
  inputBinding:
    prefix: --fts
- id: in_summary
  doc: "Generate summary statistics for coverage graphs (default false) This\ncan\
    \ be run on a previously loaded database or during the load. It\nwill default\
    \ to true if --create is used."
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_no_summary
  doc: "Do not generate summary statistics to save some space and load time\n(default\
    \ if --create is not specified, use this option to explicitly\nturn off summary\
    \ statistics when --create is specified)"
  type: boolean?
  inputBinding:
    prefix: --nosummary
- id: in_noalias_target
  doc: "Don't create an Alias attribute whose value is the target_id in a\nTarget\
    \ attribute (if the feature contains a Target attribute, the\ndefault is to create\
    \ an Alias attribute whose value is the target_id\nin the Target attribute)"
  type: boolean?
  inputBinding:
    prefix: --noalias-target
- id: in_try
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_or_fast_a_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_seqfeature_load.pl
