version 1.0

task CombineOutOutput path {
  input {
    File? pathPathToDirectory1WithoutFiles
    File? pathPathToDirectory2WithoutFiles
    String? outputOutputPath
  }
  command <<<
    CombineOut output path \
      ~{pathPathToDirectory1WithoutFiles} \
      ~{pathPathToDirectory2WithoutFiles} \
      ~{outputOutputPath}
  >>>
}