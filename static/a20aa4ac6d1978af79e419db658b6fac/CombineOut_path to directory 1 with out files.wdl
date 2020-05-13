version 1.0

task CombineOutPath to directory 1 with out files {
  input {
    File? pathPathToDirectory2WithoutFiles
    String? outputOutputPath
  }
  command <<<
    CombineOut path to directory 1 with out files \
      ~{pathPathToDirectory2WithoutFiles} \
      ~{outputOutputPath}
  >>>
}