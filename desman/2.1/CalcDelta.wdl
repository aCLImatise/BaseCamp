version 1.0

task CalcDelta.pyOutputStub {
  input {
    String? geneGeneCovFile
    String? geneGeneScgFile
    String? outputOutputStub
  }
  command <<<
    CalcDelta.py output_stub \
      ~{geneGeneCovFile} \
      ~{geneGeneScgFile} \
      ~{outputOutputStub}
  >>>
}