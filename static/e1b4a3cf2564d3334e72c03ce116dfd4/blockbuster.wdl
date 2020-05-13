version 1.0

task Blockbuster.xFile {
  input {
    String? optionsOptions
    File? fileFile
  }
  command <<<
    blockbuster.x file \
      ~{optionsOptions} \
      ~{fileFile}
  >>>
}