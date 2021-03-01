version 1.0

task Gitlfs {
  command <<<
    git_lfs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}