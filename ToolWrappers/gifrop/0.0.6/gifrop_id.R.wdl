version 1.0

task GifropIdR {
  command <<<
    gifrop_id_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}