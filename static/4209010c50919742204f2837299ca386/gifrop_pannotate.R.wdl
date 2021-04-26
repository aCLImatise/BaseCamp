version 1.0

task GifropPannotateR {
  command <<<
    gifrop_pannotate_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}