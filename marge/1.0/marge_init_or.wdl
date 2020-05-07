version 1.0

task MargeInitOr {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init or \
      ~{directoryDirectory}
  >>>
}