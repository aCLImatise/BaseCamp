version 1.0

task GifropRReqsR {
  command <<<
    gifrop_R_reqs_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}