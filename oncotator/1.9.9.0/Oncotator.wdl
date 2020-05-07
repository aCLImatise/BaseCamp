version 1.0

task Oncotator {
  input {
    String? inputInputFile
    String? outputOutputFile
    String? genomeGenomeBuild
  }
  command <<<
    Oncotator \
      ~{inputInputFile} \
      ~{outputOutputFile} \
      ~{genomeGenomeBuild}
  >>>
}