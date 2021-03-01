version 1.0

task FindRepsBlatpy {
  command <<<
    find_reps_blat_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}