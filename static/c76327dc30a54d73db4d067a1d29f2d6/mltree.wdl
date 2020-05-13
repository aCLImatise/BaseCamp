version 1.0

task Mltree {
  input {
    String? rateRateFile
    File? fileFile
  }
  command <<<
    mltree \
      ~{rateRateFile} \
      ~{fileFile}
  >>>
}