version 1.0

task NextstrainRemoteDownload {
  input {
    Boolean? recursively
  }
  command <<<
    nextstrain remote download \
      ~{if (recursively) then "--recursively" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextstrain-cli:3.0.3--py_0"
  }
  parameter_meta {
    recursively: "Download all files with the given remote path prefix\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}