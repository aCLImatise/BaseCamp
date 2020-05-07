version 1.0

task GxFastqGroomer {
  input {
    Boolean fixFixId
    Boolean noNoFixId
  }
  command <<<
    gx-fastq-groomer \
      ~{true="--fix-id" false="" fixFixId} \
      ~{true="--no-fix-id" false="" noNoFixId}
  >>>
}