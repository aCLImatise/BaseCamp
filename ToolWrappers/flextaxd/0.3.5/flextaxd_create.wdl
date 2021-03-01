version 1.0

task Flextaxdcreate {
  input {
    Directory? outdir
    Boolean? database
    Boolean? processes
    Boolean? download
    Boolean? representative
    File? rep_path
    Boolean? force_download
    Boolean? genomes_path
    Boolean? create_db
    Boolean? db_program
    Boolean? db_name
    Boolean? params
    Boolean? test
    Boolean? keep
    Boolean? skip
    Boolean? build_processes
    Boolean? logs
    Boolean? verbose
    Boolean? debug
    Boolean? supress
  }
  command <<<
    flextaxd_create \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (processes) then "--processes" else ""} \
      ~{if (download) then "--download" else ""} \
      ~{if (representative) then "--representative" else ""} \
      ~{if defined(rep_path) then ("--rep_path " +  '"' + rep_path + '"') else ""} \
      ~{if (force_download) then "--force_download" else ""} \
      ~{if (genomes_path) then "--genomes_path" else ""} \
      ~{if (create_db) then "--create_db" else ""} \
      ~{if (db_program) then "--dbprogram" else ""} \
      ~{if (db_name) then "--db_name" else ""} \
      ~{if (params) then "--params" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (build_processes) then "--build_processes" else ""} \
      ~{if (logs) then "--logs" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (supress) then "--supress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/flextaxd:0.3.5--py_0"
  }
  parameter_meta {
    outdir: "Output directory (same directory as\\ncustom_taxonomy_databases dump)"
    database: "Custom taxonomy sqlite3 database file"
    processes: "Use multiple cores for downloading genomes and kraken\\nif -kp is not set"
    download: "Download additional sequences"
    representative: "Download GTDB representative genomes"
    rep_path: "Specify GTDB representative version URL full path"
    force_download: "Download sequences from genbank if not in refseq\\n(WARNING: might include genome withdrawals)"
    genomes_path: "path to genomes"
    create_db: "Start create db after loading databases"
    db_program: "Select one of the supported programs [kraken2,\\nkrakenuniq, ganon]"
    db_name: "database directory (fullpath)"
    params: "Add extra params to create command (supports kraken*)"
    test: "test database structure, only use 100 seqs"
    keep: "Keep temporary files"
    skip: "Do not include genomes within this taxonomy (child\\ntree) in the database (works for kraken)"
    build_processes: "Use a different number of cores for kraken\\nclassification"
    logs: "Specify log directory"
    verbose: "Verbose output"
    debug: "Debug output"
    supress: "Supress warnings"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}