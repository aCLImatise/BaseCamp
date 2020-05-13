version 1.0

task BedtoolsCluster {
  input {
    Boolean sS
    Boolean dD
  }
  command <<<
    bedtools cluster \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD}
  >>>
}