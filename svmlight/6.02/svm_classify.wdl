version 1.0

task SvmClassify {
  input {
    Boolean vV
    Boolean fF
    String? exampleExampleFile
    String? modelModelFile
    String? outputOutputFile
  }
  command <<<
    svm_classify \
      ~{exampleExampleFile} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{modelModelFile} \
      ~{outputOutputFile}
  >>>
}