version 1.0

task PreprocessPeakviewpy {
  command <<<
    preprocess_peakview_py
  >>>
  output {
    File out_stdout = stdout()
  }
}