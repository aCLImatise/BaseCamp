version 1.0

task MargeInitAnd {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init and \
      ~{directoryDirectory}
  >>>
}