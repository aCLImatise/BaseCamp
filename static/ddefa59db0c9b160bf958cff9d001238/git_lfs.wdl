version 1.0

task Gitlfs {
  command <<<
    git_lfs
  >>>
  output {
    File out_stdout = stdout()
  }
}