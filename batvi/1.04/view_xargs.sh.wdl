version 1.0

task ViewXargssh {
  command <<<
    view_xargs_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}