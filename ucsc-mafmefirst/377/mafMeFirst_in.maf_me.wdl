version 1.0

task MafMeFirstIn.mafMe.list {
  input {
    String? outOutMaf
  }
  command <<<
    mafMeFirst in.maf me.list \
      ~{outOutMaf}
  >>>
}