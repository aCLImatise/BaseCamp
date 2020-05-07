version 1.0

task MasurcaSuperreads {
  input {
    File outputOutputDir
  }
  command <<<
    masurca-superreads \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}