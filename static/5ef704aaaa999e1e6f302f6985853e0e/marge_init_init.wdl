version 1.0

task MargeInitInit {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init init \
      ~{directoryDirectory}
  >>>
}