version 1.0

task MargeInitIn {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init in \
      ~{directoryDirectory}
  >>>
}