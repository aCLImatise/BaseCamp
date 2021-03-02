version 1.0

task STARFusion {
  command <<<
    STAR_Fusion
  >>>
  runtime {
    docker: "quay.io/biocontainers/star-fusion:1.9.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}