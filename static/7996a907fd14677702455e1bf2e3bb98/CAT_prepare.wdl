version 1.0

task CATPrepare {
  input {
    Boolean? fresh
    Boolean? existing
    Boolean? _databasefolder_name
    Boolean? _taxonomyfolder_name
    Boolean? path_to_diamond
    Boolean? quiet
    Boolean? no_log
    Boolean? _nproc_number
  }
  command <<<
    CAT prepare \
      ~{true="--fresh" false="" fresh} \
      ~{true="--existing" false="" existing} \
      ~{true="-d" false="" _databasefolder_name} \
      ~{true="-t" false="" _taxonomyfolder_name} \
      ~{true="--path_to_diamond" false="" path_to_diamond} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--no_log" false="" no_log} \
      ~{true="-n" false="" _nproc_number}
  >>>
  parameter_meta {
    fresh: "Start with a fresh database."
    existing: "Start with an existing database. CAT prepare will search the supplied database and taxonomy folders and only construct files that do not exist yet."
    _databasefolder_name: ", --database_folder  Name of folder to which database files will be written (default: {date}_CAT_database)."
    _taxonomyfolder_name: ", --taxonomy_folder  Name of folder to which taxonomy files will be downloaded (default: {date}_taxonomy)."
    path_to_diamond: "Path to DIAMOND binaries. Please supply if CAT prepare can not find DIAMOND."
    quiet: "Suppress verbosity."
    no_log: "Suppress log file."
    _nproc_number: ", --nproc          Number of cores to deploy by DIAMOND makedb (default: maximum)."
  }
}