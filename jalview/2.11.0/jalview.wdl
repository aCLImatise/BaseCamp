version 1.0

task Jalview {
  input {
    Boolean openOpen
    File? fileFile
    String? outputOutputFormat
    String? outputOutputFile
  }
  command <<<
    jalview \
      ~{fileFile} \
      ~{true="-open" false="" openOpen} \
      ~{outputOutputFormat} \
      ~{outputOutputFile}
  >>>
}