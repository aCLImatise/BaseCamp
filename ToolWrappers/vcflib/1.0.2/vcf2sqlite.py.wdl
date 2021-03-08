version 1.0

task Vcf2sqlitepy {
  command <<<
    vcf2sqlite_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  output {
    File out_stdout = stdout()
  }
}