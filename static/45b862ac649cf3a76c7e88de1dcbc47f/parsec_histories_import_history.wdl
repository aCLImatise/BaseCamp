version 1.0

task ParsecHistoriesImportHistory {
  input {
    File? file_path
  }
  command <<<
    parsec histories import_history \
      ~{if defined(file_path) then ("--file_path " +  '"' + file_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    file_path: "Path to exported history archive on disk. :type url: str\\n:param url: URL for an exported history archive"
  }
  output {
    File out_stdout = stdout()
  }
}