version 1.0

task TargetDB {
  command <<<
    targetDB
  >>>
  runtime {
    docker: "quay.io/biocontainers/targetdb:1.3.1--pyh864c0ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}