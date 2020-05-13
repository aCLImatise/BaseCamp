version 1.0

task MargeInitHuman {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init human \
      ~{directoryDirectory}
  >>>
}