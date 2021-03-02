version 1.0

task MorpheusmzMLMonoexe {
  command <<<
    Morpheus__mzML_Mono__exe
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}