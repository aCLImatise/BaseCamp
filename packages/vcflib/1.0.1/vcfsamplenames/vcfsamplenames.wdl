version 1.0

task Vcfsamplenames {
  command <<<
    vcfsamplenames
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  output {
    File out_stdout = stdout()
  }
}