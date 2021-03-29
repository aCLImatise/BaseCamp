version 1.0

task RheaalphaR {
  command <<<
    rhea_alpha_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}