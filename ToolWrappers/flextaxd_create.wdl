version 1.0

task Flextaxdcreate {
  input {
    Directory? _outdir_output
    Boolean? db
    Boolean? db_program
    Boolean? genomes_path
    Boolean? db_name
    Boolean? create_db
    Boolean? params
    Boolean? test
    Boolean? _processes_use
    Boolean? keep
    Boolean? skip
    Boolean? log
    Boolean? verbose
    Boolean? debug
    Boolean? supress
  }
  command <<<
    flextaxd_create \
      ~{if (_outdir_output) then "-o" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (db_program) then "--dbprogram" else ""} \
      ~{if (genomes_path) then "--genomes_path" else ""} \
      ~{if (db_name) then "--db_name" else ""} \
      ~{if (create_db) then "--create_db" else ""} \
      ~{if (params) then "--params" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (_processes_use) then "-p" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (supress) then "--supress" else ""}
  >>>
  parameter_meta {
    _outdir_output: ", --outdir      Output directory (same directory as\\ncustom_taxonomy_databases dump)"
    db: ", --database   Custom taxonomy sqlite3 database file"
    db_program: "Select one of the supported programs [kraken2,\\nkrakenuniq, ganon]"
    genomes_path: "path to genomes"
    db_name: "database directory (fullpath)"
    create_db: "Start create db after loading databases"
    params: "Add extra params to create command (supports kraken*)"
    test: "test database structure, only use 100 seqs"
    _processes_use: ", --processes   Use multiple cores"
    keep: "Keep temporary files"
    skip: "Do not include genomes within this taxonomy (child tree)\\nin the database (works for kraken)"
    log: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
  }
  output {
    File out_stdout = stdout()
    Directory out__outdir_output = "${in__outdir_output}"
  }
}