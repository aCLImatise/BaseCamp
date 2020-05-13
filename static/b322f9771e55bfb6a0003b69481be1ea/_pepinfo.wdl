version 1.0

task _pepinfo {
  input {
    Boolean graphGraph
  }
  command <<<
    _pepinfo \
      ~{true="-graph" false="" graphGraph}
  >>>
}