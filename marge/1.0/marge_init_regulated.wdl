version 1.0

task MargeInitRegulated {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init regulated \
      ~{directoryDirectory}
  >>>
}