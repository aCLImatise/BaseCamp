version 1.0

task MafFetchDbTableMafOut {
  input {
    String? overOverBed
    String? mafMafOut
  }
  command <<<
    mafFetch db table mafOut \
      ~{overOverBed} \
      ~{mafMafOut}
  >>>
}