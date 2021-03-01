version 1.0

task SnpSiftGwasCat {
  input {
    File? config
    Boolean? _debug
    File? db
    Boolean? download
    String? genome_version_commands
    Boolean? no_download
    Boolean? no_log
    Boolean? _verbose
    String? jar
    String java
    String g_was_cat
  }
  command <<<
    SnpSift gwasCat \
      ~{java} \
      ~{g_was_cat} \
      ~{if defined(config) then ("-config " +  '"' + config + '"') else ""} \
      ~{if (_debug) then "-d" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (download) then "-download" else ""} \
      ~{if defined(genome_version_commands) then ("-g " +  '"' + genome_version_commands + '"') else ""} \
      ~{if (no_download) then "-noDownload" else ""} \
      ~{if (no_log) then "-noLog" else ""} \
      ~{if (_verbose) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: ": Specify config file"
    _debug: ": Debug."
    db: ": Database file name (for commands that require databases)."
    download: ": Download database, if not available locally. Default: true."
    genome_version_commands: ": Genome version (for commands that require databases)."
    no_download: ": Do not download a database, if not available locally."
    no_log: ": Do not report usage statistics to server."
    _verbose: ": Verbose."
    jar: ""
    java: ""
    g_was_cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}