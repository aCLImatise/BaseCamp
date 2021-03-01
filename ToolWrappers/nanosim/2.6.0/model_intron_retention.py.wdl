version 1.0

task ModelIntronRetentionpy {
  command <<<
    model_intron_retention_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanosim:2.6.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}