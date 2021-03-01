version 1.0

task PreprocessPeakviewpy {
  command <<<
    preprocess_peakview_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}