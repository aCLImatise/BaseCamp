version 1.0

task BedCommonRegionsFile1 {
  input {
    File? fileFile2
    File? fileFileN
  }
  command <<<
    bedCommonRegions file1 \
      ~{fileFile2} \
      ~{fileFileN}
  >>>
}