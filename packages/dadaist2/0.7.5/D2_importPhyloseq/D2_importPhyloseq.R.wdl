version 1.0

task D2importPhyloseqR {
  command <<<
    D2_importPhyloseq_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}