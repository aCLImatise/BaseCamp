version 1.0

task Modificationstsv {
  command <<<
    modifications_tsv
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}