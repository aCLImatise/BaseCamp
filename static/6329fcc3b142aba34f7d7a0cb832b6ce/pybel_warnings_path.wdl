version 1.0

task PybelWarningsPath {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    pybel warnings path \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}