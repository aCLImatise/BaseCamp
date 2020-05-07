version 1.0

task MafFetchDbTableOverBed {
  input {
    String? mafMafOut
  }
  command <<<
    mafFetch db table overBed \
      ~{mafMafOut}
  >>>
}