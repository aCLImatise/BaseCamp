version 1.0

task FilterStats.pl {
  input {
    Boolean inputInput
    Boolean allAll
    String? filterFilterStatsPl
  }
  command <<<
    filter-stats.pl \
      ~{filterFilterStatsPl} \
      ~{true="--input" false="" inputInput} \
      ~{true="--all" false="" allAll}
  >>>
}