version 1.0

task FlextaxdCreate {
  input {
    Boolean? _outdir_directory
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
    flextaxd-create \
      ~{true="-o" false="" _outdir_directory} \
      ~{true="-db" false="" db} \
      ~{true="--dbprogram" false="" db_program} \
      ~{true="--genomes_path" false="" genomes_path} \
      ~{true="--db_name" false="" db_name} \
      ~{true="--create_db" false="" create_db} \
      ~{true="--params" false="" params} \
      ~{true="--test" false="" test} \
      ~{true="-p" false="" _processes_use} \
      ~{true="--keep" false="" keep} \
      ~{true="--skip" false="" skip} \
      ~{true="--log" false="" log} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--supress" false="" supress}
  >>>
  parameter_meta {
    _outdir_directory: ", --outdir      Output directory (same directory as custom_taxonomy_databases dump)"
    db: ", --database   Custom taxonomy sqlite3 database file"
    db_program: "Select one of the supported programs [kraken2, krakenuniq, ganon]"
    genomes_path: "path to genomes"
    db_name: "database directory (fullpath)"
    create_db: "Start create db after loading databases"
    params: "Add extra params to create command (supports kraken*)"
    test: "test database structure, only use 100 seqs"
    _processes_use: ", --processes   Use multiple cores"
    keep: "Keep temporary files"
    skip: "Do not include genomes within this taxonomy (child tree) in the database (works for kraken)"
    log: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
  }
}