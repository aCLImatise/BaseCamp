version 1.0

task PybelCompilePATH {
  input {
    String? optionsOptions
    File? pathPath
  }
  command <<<
    pybel compile PATH \
      ~{optionsOptions} \
      ~{pathPath}
  >>>
}