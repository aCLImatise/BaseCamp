version 1.0

task NBICseqNorm.plOutput {
  input {
    String? configConfigFile
    String? outputOutput
  }
  command <<<
    NBICseq-norm.pl output \
      ~{configConfigFile} \
      ~{outputOutput}
  >>>
}