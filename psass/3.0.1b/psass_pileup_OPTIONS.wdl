version 1.0

task PsassPileupOPTIONS {
  input {
    String? alignmentAlignmentFiles
  }
  command <<<
    psass pileup OPTIONS \
      ~{alignmentAlignmentFiles}
  >>>
}