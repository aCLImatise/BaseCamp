version 1.0

task Soap {
  input {
    Boolean vV
    Boolean sS
    Boolean gG
    Boolean rR
    Boolean eE
    Boolean pP
  }
  command <<<
    soap \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-g" false="" gG} \
      ~{true="-R" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-p" false="" pP}
  >>>
}