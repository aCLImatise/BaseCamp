version 1.0

task Vcfsorterpl {
  command <<<
    vcfsorter_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}