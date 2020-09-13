version 1.0

task CATPrepare {
  input {
    Boolean? fresh
    Boolean? existing
    Boolean? _databasefoldername_database
    Boolean? _taxonomyfoldername_bedownloaded
    Boolean? path_to_diamond
    Boolean? quiet
    Boolean? verbose
    Boolean? no_log
    Boolean? _nproc_number
  }
  command <<<
    CAT prepare \
      ~{if (fresh) then "--fresh" else ""} \
      ~{if (existing) then "--existing" else ""} \
      ~{if (_databasefoldername_database) then "-d" else ""} \
      ~{if (_taxonomyfoldername_bedownloaded) then "-t" else ""} \
      ~{if (path_to_diamond) then "--path_to_diamond" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_log) then "--no_log" else ""} \
      ~{if (_nproc_number) then "-n" else ""}
  >>>
  parameter_meta {
    fresh: "Start with a fresh database."
    existing: "Start with an existing database. CAT will search the\\nsupplied database and taxonomy folders and only\\nconstruct files that do not exist yet."
    _databasefoldername_database: ", --database_folder\\nName of folder to which database files will be written\\n(default: {date}_CAT_database)."
    _taxonomyfoldername_bedownloaded: ", --taxonomy_folder\\nName of folder to which taxonomy files will be\\ndownloaded (default: {date}_taxonomy)."
    path_to_diamond: "Path to DIAMOND binaries. Supply if CAT prepare can\\nnot find DIAMOND."
    quiet: "Suppress verbosity."
    verbose: "Increase verbostity."
    no_log: "Suppress log file."
    _nproc_number: ", --nproc          Number of cores to deploy by DIAMOND makedb (default:\\nmaximum).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}