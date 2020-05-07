version 1.0

task RadsexFreq {
  input {
    String? optionsOptions
  }
  command <<<
    radsex freq \
      ~{optionsOptions}
  >>>
}