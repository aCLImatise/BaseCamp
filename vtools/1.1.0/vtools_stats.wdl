version 1.0

task VtoolsStats {
  input {
    File inputInput
    String? optionsOptions
  }
  command <<<
    vtools-stats \
      ~{optionsOptions} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""}
  >>>
}