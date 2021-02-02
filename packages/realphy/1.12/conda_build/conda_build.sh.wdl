version 1.0

task CondaBuildsh {
  command <<<
    conda_build_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}