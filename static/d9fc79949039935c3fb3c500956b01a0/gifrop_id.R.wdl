version 1.0

task GifropIdR {
  command <<<
    gifrop_id_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}