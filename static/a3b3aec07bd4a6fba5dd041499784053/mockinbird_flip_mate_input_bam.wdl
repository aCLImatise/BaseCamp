version 1.0

task MockinbirdFlipMateInputBam {
  input {
    String? inputInputBam
    String? outputOutputBam
  }
  command <<<
    mockinbird flip_mate input_bam \
      ~{inputInputBam} \
      ~{outputOutputBam}
  >>>
}