version 1.0

task RunMashpy {
  command <<<
    run_mash_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}