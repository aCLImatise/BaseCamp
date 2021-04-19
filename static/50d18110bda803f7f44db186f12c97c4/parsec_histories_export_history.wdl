version 1.0

task ParsecHistoriesExportHistory {
  input {
    Boolean? gzip
    Boolean? include_hidden
    Boolean? include_deleted
    Boolean? wait
    Float? max_wait
    String history_id
  }
  command <<<
    parsec histories export_history \
      ~{history_id} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (include_hidden) then "--include_hidden" else ""} \
      ~{if (include_deleted) then "--include_deleted" else ""} \
      ~{if (wait) then "--wait" else ""} \
      ~{if defined(max_wait) then ("--maxwait " +  '"' + max_wait + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    gzip: "create .tar.gz archive if ``True``, else .tar  [default:\\nTrue]"
    include_hidden: "whether to include hidden datasets in the export"
    include_deleted: "whether to include deleted datasets in the export"
    wait: "if ``True``, block until the export is ready; else,\\nreturn immediately"
    max_wait: "Total time (in seconds) to wait for the export to become\\nready. When set, implies that ``wait`` is ``True``."
    history_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}