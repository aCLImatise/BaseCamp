version 1.0

task PybelNeoPath {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    pybel neo path \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}