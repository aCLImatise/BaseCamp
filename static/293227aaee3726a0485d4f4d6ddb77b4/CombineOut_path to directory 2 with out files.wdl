version 1.0

task CombineOutPath to directory 2 with out files {
  input {
    File? pathPathToDirectory1WithoutFiles
    File? pathPathToDirectory2WithoutFiles
    String? outputOutputPath
  }
  command <<<
    CombineOut path to directory 2 with out files \
      ~{pathPathToDirectory1WithoutFiles} \
      ~{pathPathToDirectory2WithoutFiles} \
      ~{outputOutputPath}
  >>>
}