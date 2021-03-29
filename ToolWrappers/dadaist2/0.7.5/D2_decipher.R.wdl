version 1.0

task D2decipherR {
  command <<<
    D2_decipher_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}