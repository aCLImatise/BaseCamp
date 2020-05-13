version 1.0

task Fastacmd {
  input {
    Boolean dD
    Boolean pP
  }
  command <<<
    fastacmd \
      ~{true="-D" false="" dD} \
      ~{true="-P" false="" pP}
  >>>
}