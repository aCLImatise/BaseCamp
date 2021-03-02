version 1.0

task RenameSequenceFilessh {
  command <<<
    Rename_SequenceFiles_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/ddocent:2.8.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}