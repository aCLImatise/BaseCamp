version 1.0

task CopyBismarkFilesForReleasepl {
  command <<<
    copy_bismark_files_for_release_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}