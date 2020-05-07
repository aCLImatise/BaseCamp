version 1.0

task Bam2fnaOUTPUT {
  input {
    String? inputInput
    String? outputOutput
  }
  command <<<
    bam2fna OUTPUT \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}