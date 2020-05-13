version 1.0

task PybelNeoOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    pybel neo OPTIONS \
      ~{pathPath}
  >>>
}