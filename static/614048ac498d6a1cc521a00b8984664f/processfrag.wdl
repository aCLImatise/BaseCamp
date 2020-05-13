version 1.0

task Processfrag.sh {
  input {
    String? processProcessFragSsh
    File? fileFile
  }
  command <<<
    processfrag.sh \
      ~{processProcessFragSsh} \
      ~{fileFile}
  >>>
}