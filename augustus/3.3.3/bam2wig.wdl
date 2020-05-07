version 1.0

task Bam2wig {
  input {
    Boolean rR
    Boolean tT
  }
  command <<<
    bam2wig \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT}
  >>>
}