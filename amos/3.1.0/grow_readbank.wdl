version 1.0

task GrowReadbank {
  input {
    Boolean cC
    Boolean cC
    Boolean fF
    Boolean sS
    String? growGrowReadBank
  }
  command <<<
    grow-readbank \
      ~{growGrowReadBank} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS}
  >>>
}