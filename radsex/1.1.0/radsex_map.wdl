version 1.0

task RadsexMap {
  input {
    String? optionsOptions
  }
  command <<<
    radsex map \
      ~{optionsOptions}
  >>>
}