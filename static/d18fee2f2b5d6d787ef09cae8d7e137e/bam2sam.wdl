version 1.0

task Bam2sam {
  input {
    Boolean noNoHeader
    Boolean headerHeaderOnly
  }
  command <<<
    bam2sam \
      ~{true="--no-header" false="" noNoHeader} \
      ~{true="--header-only" false="" headerHeaderOnly}
  >>>
}