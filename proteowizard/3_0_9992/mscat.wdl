version 1.0

task Mscat {
  input {
    File? filenameFilename
  }
  command <<<
    mscat \
      ~{filenameFilename}
  >>>
}