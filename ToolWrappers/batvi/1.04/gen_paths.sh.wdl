version 1.0

task GenPathssh {
  command <<<
    gen_paths_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}