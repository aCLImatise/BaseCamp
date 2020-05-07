version 1.0

task Pepinfo {
  input {
    Boolean graphGraph
  }
  command <<<
    pepinfo \
      ~{true="-graph" false="" graphGraph}
  >>>
}