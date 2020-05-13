version 1.0

task SimkaMinUpdate.py {
  input {
    Boolean inIn
    Boolean inInToUpdate
    Boolean binBin
    Boolean nbNbCores
    Boolean maxMaxMemory
    Boolean filterFilter
    Boolean maxMaxReads
    Boolean minMinReadSize
    Boolean minMinShannonIndex
  }
  command <<<
    simkaMin_update.py \
      ~{true="-in" false="" inIn} \
      ~{true="-in-to-update" false="" inInToUpdate} \
      ~{true="-bin" false="" binBin} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-max-reads" false="" maxMaxReads} \
      ~{true="-min-read-size" false="" minMinReadSize} \
      ~{true="-min-shannon-index" false="" minMinShannonIndex}
  >>>
}