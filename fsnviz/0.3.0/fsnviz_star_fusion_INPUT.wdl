version 1.0

task FsnvizStarFusionINPUT {
  input {
    String? optionsOptions
    String? inputInput
  }
  command <<<
    fsnviz star-fusion INPUT \
      ~{optionsOptions} \
      ~{inputInput}
  >>>
}