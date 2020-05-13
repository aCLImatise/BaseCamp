version 1.0

task Bam2pairs {
  input {
    Boolean lL
    Boolean chromChromSize
  }
  command <<<
    bam2pairs \
      ~{true="-l" false="" lL} \
      ~{true="--chromsize" false="" chromChromSize}
  >>>
}