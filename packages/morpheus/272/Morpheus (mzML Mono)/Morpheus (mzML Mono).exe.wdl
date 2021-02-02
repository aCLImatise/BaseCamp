version 1.0

task MorpheusmzMLMonoexe {
  command <<<
    Morpheus__mzML_Mono__exe
  >>>
  output {
    File out_stdout = stdout()
  }
}