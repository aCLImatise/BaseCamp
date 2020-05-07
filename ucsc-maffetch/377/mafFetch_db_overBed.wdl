version 1.0

task MafFetchDbOverBed {
  input {
    String? tableTable
    String? overOverBed
    String? mafMafOut
  }
  command <<<
    mafFetch db overBed \
      ~{tableTable} \
      ~{overOverBed} \
      ~{mafMafOut}
  >>>
}