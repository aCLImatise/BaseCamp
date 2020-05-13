version 1.0

task RadsexDistrib {
  input {
    String? optionsOptions
  }
  command <<<
    radsex distrib \
      ~{optionsOptions}
  >>>
}