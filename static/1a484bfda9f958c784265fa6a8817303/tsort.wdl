version 1.0

task Tsort {
  input {
    String? optionOption
    File? fileFile
  }
  command <<<
    tsort \
      ~{optionOption} \
      ~{fileFile}
  >>>
}