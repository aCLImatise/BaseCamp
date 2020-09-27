version 1.0

task GenPathssh {
  command <<<
    gen_paths_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}