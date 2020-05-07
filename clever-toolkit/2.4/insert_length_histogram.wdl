version 1.0

task InsertLengthHistogram {
  input {
    Boolean cC
    Boolean mM
    Boolean gG
    Boolean sortedSorted
    Boolean cC
    Boolean allAll
    Boolean oO
    Boolean rR
    Boolean lL
  }
  command <<<
    insert-length-histogram \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM} \
      ~{true="-g" false="" gG} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{true="-C" false="" cC} \
      ~{true="--all" false="" allAll} \
      ~{true="-o" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{true="-L" false="" lL}
  >>>
}