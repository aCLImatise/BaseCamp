version 1.0

task MafMeFirstMe.list {
  input {
    String? inInMaf
    String? meMeList
    String? outOutMaf
  }
  command <<<
    mafMeFirst me.list \
      ~{inInMaf} \
      ~{meMeList} \
      ~{outOutMaf}
  >>>
}