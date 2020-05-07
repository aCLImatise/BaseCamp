version 1.0

task MargeInitPredict {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init predict \
      ~{directoryDirectory}
  >>>
}