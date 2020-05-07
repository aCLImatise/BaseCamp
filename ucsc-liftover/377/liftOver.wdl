version 1.0

task LiftOver {
  input {
    Boolean minMinBlocks
    Boolean fudgeFudgeThick
    Boolean multipleMultiple
    Boolean noNoSerial
    Boolean minchaMinchaInt
    Boolean minsizeMinsizeT
    Boolean minsizeMinsizeQ
    Boolean chainChainTable
    Boolean errorErrorHelp
    String? oldOldFile
    String? mapMapChain
    String? newNewFile
    String? unmappedUnmapped
  }
  command <<<
    liftOver \
      ~{oldOldFile} \
      ~{true="-minBlocks" false="" minMinBlocks} \
      ~{true="-fudgeThick" false="" fudgeFudgeThick} \
      ~{true="-multiple" false="" multipleMultiple} \
      ~{true="-noSerial" false="" noNoSerial} \
      ~{true="-minChainT" false="" minchaMinchaInt} \
      ~{true="-minSizeT" false="" minsizeMinsizeT} \
      ~{true="-minSizeQ" false="" minsizeMinsizeQ} \
      ~{true="-chainTable" false="" chainChainTable} \
      ~{true="-errorHelp" false="" errorErrorHelp} \
      ~{mapMapChain} \
      ~{newNewFile} \
      ~{unmappedUnmapped}
  >>>
}