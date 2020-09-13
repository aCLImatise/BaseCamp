version 1.0

task GifropInfoR {
  command <<<
    gifrop_info_R
  >>>
  output {
    File out_stdout = stdout()
  }
}