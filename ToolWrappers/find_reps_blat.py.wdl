version 1.0

task FindRepsBlatpy {
  command <<<
    find_reps_blat_py
  >>>
  output {
    File out_stdout = stdout()
  }
}