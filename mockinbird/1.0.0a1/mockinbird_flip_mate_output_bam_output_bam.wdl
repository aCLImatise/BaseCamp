version 1.0

task MockinbirdFlipMateOutputBamOutputBam {
  input {
    String? inputInputBam
    String? outputOutputBam
  }
  command <<<
    mockinbird flip_mate output_bam output_bam \
      ~{inputInputBam} \
      ~{outputOutputBam}
  >>>
}