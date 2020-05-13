version 1.0

task BigMafToMafBigMaf.bb {
  input {
    File? fileFileMaf
  }
  command <<<
    bigMafToMaf bigMaf.bb \
      ~{fileFileMaf}
  >>>
}