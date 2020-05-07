version 1.0

task DrawCt file {
  input {
    String? outputOutputFile
  }
  command <<<
    draw ct file \
      ~{outputOutputFile}
  >>>
}