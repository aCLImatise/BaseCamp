version 1.0

task Obdistgen {
  input {
    File? filenameFilename
  }
  command <<<
    obdistgen \
      ~{filenameFilename}
  >>>
}