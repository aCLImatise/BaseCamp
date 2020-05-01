version 1.0

task ClusterBed {
  input {
    Boolean sS
    Boolean dD
  }
  command <<<
    clusterBed \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD}
  >>>
}