version 1.0

task KssdReverse {
  input {
    String? optionOption
    String? coCoDir
  }
  command <<<
    kssd reverse \
      ~{optionOption} \
      ~{coCoDir}
  >>>
}