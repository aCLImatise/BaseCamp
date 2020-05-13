version 1.0

task FsnvizStarFusionOPTIONS {
  input {
    String? inputInput
  }
  command <<<
    fsnviz star-fusion OPTIONS \
      ~{inputInput}
  >>>
}