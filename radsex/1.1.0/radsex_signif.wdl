version 1.0

task RadsexSignif {
  input {
    String? optionsOptions
  }
  command <<<
    radsex signif \
      ~{optionsOptions}
  >>>
}