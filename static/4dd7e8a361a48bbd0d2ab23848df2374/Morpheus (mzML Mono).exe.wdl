version 1.0

task MorpheusmzMLMonoexe {
  command <<<
    Morpheus__mzML_Mono__exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}