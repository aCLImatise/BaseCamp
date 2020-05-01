version 1.0

task Obsym {
  input {
    String? inputInputFile
  }
  command <<<
    obsym \
      ~{inputInputFile}
  >>>
}