version 1.0

task Readinfo2cam {
  input {
    String? contigContigInfoFile
    String? repeatRepeatCoordFile
  }
  command <<<
    readinfo2cam \
      ~{contigContigInfoFile} \
      ~{repeatRepeatCoordFile}
  >>>
}