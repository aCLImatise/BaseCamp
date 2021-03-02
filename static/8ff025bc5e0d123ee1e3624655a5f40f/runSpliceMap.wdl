version 1.0

task RunSpliceMap {
  input {
    String run_dot_cfg
  }
  command <<<
    runSpliceMap \
      ~{run_dot_cfg}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_dot_cfg: "--  Configuration options for this run, see comments in file for details"
  }
  output {
    File out_stdout = stdout()
  }
}