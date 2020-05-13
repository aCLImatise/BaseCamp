version 1.0

task Validate {
  input {
    File? fileFilePath
  }
  command <<<
    validate \
      ~{fileFilePath}
  >>>
}