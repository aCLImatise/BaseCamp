version 1.0

task FillAnAc {
  input {
    String? optionsOptions
    String? inInVcf
    String? outOutVcf
  }
  command <<<
    fill-an-ac \
      ~{optionsOptions} \
      ~{inInVcf} \
      ~{outOutVcf}
  >>>
}