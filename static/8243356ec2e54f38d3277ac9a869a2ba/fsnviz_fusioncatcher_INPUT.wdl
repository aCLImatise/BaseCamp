version 1.0

task FsnvizFusioncatcherINPUT {
  input {
    String? optionsOptions
    String? inputInput
  }
  command <<<
    fsnviz fusioncatcher INPUT \
      ~{optionsOptions} \
      ~{inputInput}
  >>>
}