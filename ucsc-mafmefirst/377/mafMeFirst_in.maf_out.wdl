version 1.0

task MafMeFirstIn.mafOut.maf {
  input {
    String? meMeList
    String? outOutMaf
  }
  command <<<
    mafMeFirst in.maf out.maf \
      ~{meMeList} \
      ~{outOutMaf}
  >>>
}