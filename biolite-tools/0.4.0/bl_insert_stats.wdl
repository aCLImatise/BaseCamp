version 1.0

task BlInsertStats {
  input {
    Boolean iI
    Boolean oO
    Boolean mM
    String? insertInsertStats
  }
  command <<<
    bl-insert-stats \
      ~{insertInsertStats} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM}
  >>>
}