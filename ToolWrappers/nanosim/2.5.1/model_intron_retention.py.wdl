version 1.0

task ModelIntronRetentionpy {
  command <<<
    model_intron_retention_py
  >>>
  output {
    File out_stdout = stdout()
  }
}