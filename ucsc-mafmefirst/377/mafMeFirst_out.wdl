version 1.0

task MafMeFirstOut.maf {
  input {
    String? inInMaf
    String? meMeList
    String? outOutMaf
  }
  command <<<
    mafMeFirst out.maf \
      ~{inInMaf} \
      ~{meMeList} \
      ~{outOutMaf}
  >>>
}