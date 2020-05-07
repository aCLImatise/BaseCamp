version 1.0

task MapDIA {
  input {
    String? inputInput
    String? parameterParameter
    File? fileFile
  }
  command <<<
    mapDIA \
      ~{inputInput} \
      ~{parameterParameter} \
      ~{fileFile}
  >>>
}