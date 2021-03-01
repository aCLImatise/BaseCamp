version 1.0

task Flextaxdcreate {
  input {
    Directory? outdir
    Boolean? database
    Boolean? db_program
    Boolean? genomes_path
    Boolean? db_name
    Boolean? create_db
    Boolean? params
    Boolean? test
    Boolean? processes
    Boolean? keep
    Boolean? skip
    Boolean? log
    Boolean? verbose
    Boolean? debug
    Boolean? supress
  }
  command <<<
    flextaxd_create \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (db_program) then "--dbprogram" else ""} \
      ~{if (genomes_path) then "--genomes_path" else ""} \
      ~{if (db_name) then "--db_name" else ""} \
      ~{if (create_db) then "--create_db" else ""} \
      ~{if (params) then "--params" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (processes) then "--processes" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (supress) then "--supress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Output directory (same directory as\\ncustom_taxonomy_databases dump)"
    database: "Custom taxonomy sqlite3 database file"
    db_program: "Select one of the supported programs [kraken2,\\nkrakenuniq, ganon]"
    genomes_path: "path to genomes"
    db_name: "database directory (fullpath)"
    create_db: "Start create db after loading databases"
    params: "Add extra params to create command (supports kraken*)"
    test: "test database structure, only use 100 seqs"
    processes: "Use multiple cores"
    keep: "Keep temporary files"
    skip: "Do not include genomes within this taxonomy (child tree)\\nin the database (works for kraken)"
    log: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}