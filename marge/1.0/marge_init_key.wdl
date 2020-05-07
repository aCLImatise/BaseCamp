version 1.0

task MargeInitKey {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init key \
      ~{directoryDirectory}
  >>>
}