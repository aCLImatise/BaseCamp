version 1.0

task MargeInitMouse. {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init mouse. \
      ~{directoryDirectory}
  >>>
}