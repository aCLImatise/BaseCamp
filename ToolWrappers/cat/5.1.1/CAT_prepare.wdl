version 1.0

task CATPrepare {
  input {
    Boolean? fresh
    Boolean? existing
    Boolean? database_folder
    Boolean? taxonomy_folder
    Boolean? path_to_diamond
    Boolean? quiet
    Boolean? verbose
    Boolean? no_log
    Boolean? nproc
  }
  command <<<
    CAT prepare \
      ~{if (fresh) then "--fresh" else ""} \
      ~{if (existing) then "--existing" else ""} \
      ~{if (database_folder) then "--database_folder" else ""} \
      ~{if (taxonomy_folder) then "--taxonomy_folder" else ""} \
      ~{if (path_to_diamond) then "--path_to_diamond" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_log) then "--no_log" else ""} \
      ~{if (nproc) then "--nproc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fresh: "Start with a fresh database."
    existing: "Start with an existing database. CAT will search the\\nsupplied database and taxonomy folders and only\\nconstruct files that do not exist yet."
    database_folder: "Name of folder to which database files will be written\\n(default: {date}_CAT_database)."
    taxonomy_folder: "Name of folder to which taxonomy files will be\\ndownloaded (default: {date}_taxonomy)."
    path_to_diamond: "Path to DIAMOND binaries. Supply if CAT prepare can\\nnot find DIAMOND."
    quiet: "Suppress verbosity."
    verbose: "Increase verbostity."
    no_log: "Suppress log file."
    nproc: "Number of cores to deploy by DIAMOND makedb (default:\\nmaximum).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}