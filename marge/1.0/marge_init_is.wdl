version 1.0

task MargeInitIs {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init is \
      ~{directoryDirectory}
  >>>
}