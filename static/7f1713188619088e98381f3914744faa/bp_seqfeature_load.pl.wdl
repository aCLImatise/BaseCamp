version 1.0

task BpSeqfeatureLoadpl {
  input {
    Boolean? dsn
    Boolean? namespace
    Boolean? seqfeature
    Boolean? adaptor
    Boolean? verbose
    Boolean? fast
    Boolean? temporary_directory
    Boolean? ignore_seq_region
    Boolean? create
    Boolean? user
    Boolean? password
    Boolean? zip
    Boolean? sub_features
    Boolean? fts
    Boolean? summary
    Boolean? no_summary
    Boolean? noalias_target
    String try
    Int gff_or_fast_a_file_one
  }
  command <<<
    bp_seqfeature_load_pl \
      ~{try} \
      ~{gff_or_fast_a_file_one} \
      ~{if (dsn) then "--dsn" else ""} \
      ~{if (namespace) then "--namespace" else ""} \
      ~{if (seqfeature) then "--seqfeature" else ""} \
      ~{if (adaptor) then "--adaptor" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (temporary_directory) then "--temporary-directory" else ""} \
      ~{if (ignore_seq_region) then "--ignore-seqregion" else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (password) then "--password" else ""} \
      ~{if (zip) then "--zip" else ""} \
      ~{if (sub_features) then "--subfeatures" else ""} \
      ~{if (fts) then "--fts" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (no_summary) then "--nosummary" else ""} \
      ~{if (noalias_target) then "--noalias-target" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dsn: "DBI data source (default dbi:mysql:test)"
    namespace: "The table prefix to use (default undef) Allows several independent\\nsequence feature databases to be stored in a single database"
    seqfeature: "The type of SeqFeature to create... RTSC (default\\nBio::DB::SeqFeature)"
    adaptor: "The storage adaptor (class) to use (default DBI::mysql)"
    verbose: "Turn on verbose progress reporting (default true) Use --noverbose to\\nswitch this off."
    fast: "Activate fast loading. (default 0) Only available for some adaptors."
    temporary_directory: "Specify temporary directory for fast loading (default\\nFile::Spec->tmpdir())"
    ignore_seq_region: "If true, then ignore ##sequence-region directives in the GFF3 file\\n(default, create a feature for each region)"
    create: "Create the database and reinitialize it (default false) Note, this\\nwill erase previous database contents, if any."
    user: "User to connect to database as"
    password: "Password to use to connect to database"
    zip: "Compress database tables to save space (default false)"
    sub_features: "Turn on indexing of subfeatures (default true) Use --nosubfeatures\\nto switch this off."
    fts: "Index the attribute table for full-text search (default false).\\nApplicable only when --create is specified. Currently applicable to\\nthe DBI::SQLite storage adaptor only (using the most recent\\nsupported FTS indexing method, which may not be portable to older\\nDBI::SQLite versions)."
    summary: "Generate summary statistics for coverage graphs (default false) This\\ncan be run on a previously loaded database or during the load. It\\nwill default to true if --create is used."
    no_summary: "Do not generate summary statistics to save some space and load time\\n(default if --create is not specified, use this option to explicitly\\nturn off summary statistics when --create is specified)"
    noalias_target: "Don't create an Alias attribute whose value is the target_id in a\\nTarget attribute (if the feature contains a Target attribute, the\\ndefault is to create an Alias attribute whose value is the target_id\\nin the Target attribute)"
    try: ""
    gff_or_fast_a_file_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}