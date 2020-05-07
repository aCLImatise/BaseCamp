version 1.0

task NwSupport {
  input {
    Boolean pP
  }
  command <<<
    nw_support \
      ~{true="-p" false="" pP}
  >>>
}