version 1.0

task HeadRestFileName {
  input {
    String? countCount
    File? filenameFilename
  }
  command <<<
    headRest fileName \
      ~{countCount} \
      ~{filenameFilename}
  >>>
}