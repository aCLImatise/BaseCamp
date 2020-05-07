version 1.0

task BigMafToMafFile.maf {
  input {
    String? bigBigMaFbb
    File? fileFileMaf
  }
  command <<<
    bigMafToMaf file.maf \
      ~{bigBigMaFbb} \
      ~{fileFileMaf}
  >>>
}