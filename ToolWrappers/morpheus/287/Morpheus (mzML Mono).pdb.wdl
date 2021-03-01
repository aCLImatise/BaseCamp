version 1.0

task MorpheusmzMLMonopdb {
  command <<<
    Morpheus__mzML_Mono__pdb
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}