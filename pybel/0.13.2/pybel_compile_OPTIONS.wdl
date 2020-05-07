version 1.0

task PybelCompileOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    pybel compile OPTIONS \
      ~{pathPath}
  >>>
}