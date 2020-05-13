version 1.0

task Scalac {
  input {
    String? sourceSourceFiles
  }
  command <<<
    scalac \
      ~{sourceSourceFiles}
  >>>
}