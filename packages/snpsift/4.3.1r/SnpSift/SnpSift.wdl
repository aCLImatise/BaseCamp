version 1.0

task SnpSift {
  input {
    Boolean? _debug
    Boolean? download
    Boolean? no_download
    Boolean? no_log
    Boolean? _verbose
    String? jar
  }
  command <<<
    SnpSift \
      ~{if (_debug) then "-d" else ""} \
      ~{if (download) then "-download" else ""} \
      ~{if (no_download) then "-noDownload" else ""} \
      ~{if (no_log) then "-noLog" else ""} \
      ~{if (_verbose) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _debug: ": Debug."
    download: ": Download database, if not available locally. Default: true."
    no_download: ": Do not download a database, if not available locally."
    no_log: ": Do not report usage statistics to server."
    _verbose: ": Verbose."
    jar: ""
  }
  output {
    File out_stdout = stdout()
  }
}