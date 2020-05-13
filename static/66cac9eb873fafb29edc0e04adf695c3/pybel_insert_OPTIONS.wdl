version 1.0

task PybelInsertOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    pybel insert OPTIONS \
      ~{pathPath}
  >>>
}