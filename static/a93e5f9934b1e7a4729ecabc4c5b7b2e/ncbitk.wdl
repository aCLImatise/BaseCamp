version 1.0

task Ncbitk {
  input {
    Boolean statusStatus
  }
  command <<<
    ncbitk \
      ~{true="--status" false="" statusStatus}
  >>>
}