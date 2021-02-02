version 1.0

task Segmentationfoldutils {
  command <<<
    segmentation_fold_utils
  >>>
  output {
    File out_stdout = stdout()
  }
}