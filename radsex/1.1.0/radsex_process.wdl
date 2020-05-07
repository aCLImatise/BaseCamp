version 1.0

task RadsexProcess {
  input {
    String? optionsOptions
  }
  command <<<
    radsex process \
      ~{optionsOptions}
  >>>
}