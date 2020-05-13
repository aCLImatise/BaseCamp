version 1.0

task PybelInsertPath {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    pybel insert path \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}