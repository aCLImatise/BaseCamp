version 1.0

task Vcfgtcomparesh {
  command <<<
    vcfgtcompare_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}