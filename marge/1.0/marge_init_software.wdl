version 1.0

task MargeInitSoftware {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init software \
      ~{directoryDirectory}
  >>>
}