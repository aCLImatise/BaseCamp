version 1.0

task PsassPileupALIGNMENTFILES... {
  input {
    String? optionsOptions
    String? alignmentAlignmentFiles
  }
  command <<<
    psass pileup ALIGNMENT_FILES... \
      ~{optionsOptions} \
      ~{alignmentAlignmentFiles}
  >>>
}