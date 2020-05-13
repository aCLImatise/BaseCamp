version 1.0

task FsnvizFusioncatcherOPTIONS {
  input {
    String? inputInput
  }
  command <<<
    fsnviz fusioncatcher OPTIONS \
      ~{inputInput}
  >>>
}