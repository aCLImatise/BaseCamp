version 1.0

task MafFetchDbMafOut {
  input {
    String? tableTable
    String? overOverBed
    String? mafMafOut
  }
  command <<<
    mafFetch db mafOut \
      ~{tableTable} \
      ~{overOverBed} \
      ~{mafMafOut}
  >>>
}