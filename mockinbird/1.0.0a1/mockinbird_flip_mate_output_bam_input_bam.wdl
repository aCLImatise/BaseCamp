version 1.0

task MockinbirdFlipMateOutputBamInputBam {
  input {
    String? inputInputBam
    String? outputOutputBam
  }
  command <<<
    mockinbird flip_mate output_bam input_bam \
      ~{inputInputBam} \
      ~{outputOutputBam}
  >>>
}