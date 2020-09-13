version 1.0

task GifropRReqsR {
  command <<<
    gifrop_R_reqs_R
  >>>
  output {
    File out_stdout = stdout()
  }
}