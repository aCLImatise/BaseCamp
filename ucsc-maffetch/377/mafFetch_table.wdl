version 1.0

task MafFetchTable {
  input {
    String? dbDb
    String? tableTable
    String? overOverBed
    String? mafMafOut
  }
  command <<<
    mafFetch table \
      ~{dbDb} \
      ~{tableTable} \
      ~{overOverBed} \
      ~{mafMafOut}
  >>>
}