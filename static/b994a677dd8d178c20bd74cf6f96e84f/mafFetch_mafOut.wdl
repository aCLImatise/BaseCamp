version 1.0

task MafFetchMafOut {
  input {
    String? dbDb
    String? tableTable
    String? overOverBed
    String? mafMafOut
  }
  command <<<
    mafFetch mafOut \
      ~{dbDb} \
      ~{tableTable} \
      ~{overOverBed} \
      ~{mafMafOut}
  >>>
}