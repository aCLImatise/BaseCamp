version 1.0

task BedCommonRegionsFileN {
  input {
    File? fileFile1
    File? fileFile2
    File? fileFileN
  }
  command <<<
    bedCommonRegions fileN \
      ~{fileFile1} \
      ~{fileFile2} \
      ~{fileFileN}
  >>>
}