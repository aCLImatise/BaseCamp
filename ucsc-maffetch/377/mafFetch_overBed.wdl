version 1.0

task MafFetchOverBed {
  input {
    String? dbDb
    String? tableTable
    String? overOverBed
    String? mafMafOut
  }
  command <<<
    mafFetch overBed \
      ~{dbDb} \
      ~{tableTable} \
      ~{overOverBed} \
      ~{mafMafOut}
  >>>
}