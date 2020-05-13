version 1.0

task MargeInitA {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init a \
      ~{directoryDirectory}
  >>>
}