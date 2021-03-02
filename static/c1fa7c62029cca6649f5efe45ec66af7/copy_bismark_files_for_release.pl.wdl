version 1.0

task CopyBismarkFilesForReleasepl {
  command <<<
    copy_bismark_files_for_release_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}