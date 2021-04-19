version 1.0

task ParsecToolshedRepositoriesRepositoryRevisions {
  input {
    Boolean? downloadable
  }
  command <<<
    parsec toolshed_repositories repository_revisions \
      ~{if (downloadable) then "--downloadable" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    downloadable: "Can the tool be downloaded"
  }
  output {
    File out_stdout = stdout()
  }
}