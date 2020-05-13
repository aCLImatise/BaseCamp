version 1.0

task PybelWarningsOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    pybel warnings OPTIONS \
      ~{pathPath}
  >>>
}