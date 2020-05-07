version 1.0

task ScmapMakeTestData.R {
  input {
    String outputOutputObjectFile
  }
  command <<<
    scmap-make-test-data.R \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}