version 1.0

task BedCommonRegionsFile2 {
  input {
    File? fileFile1
    File? fileFile2
    File? fileFileN
  }
  command <<<
    bedCommonRegions file2 \
      ~{fileFile1} \
      ~{fileFile2} \
      ~{fileFileN}
  >>>
}