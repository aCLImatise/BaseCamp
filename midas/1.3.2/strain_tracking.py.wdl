version 1.0

task StrainTrackingpy {
  command <<<
    strain_tracking_py
  >>>
  output {
    File out_stdout = stdout()
  }
}