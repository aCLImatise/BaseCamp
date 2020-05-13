version 1.0

task PybelPostPath {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    pybel post path \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}