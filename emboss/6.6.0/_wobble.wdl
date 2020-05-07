version 1.0

task _wobble {
  input {
    Boolean graphGraph
  }
  command <<<
    _wobble \
      ~{true="-graph" false="" graphGraph}
  >>>
}