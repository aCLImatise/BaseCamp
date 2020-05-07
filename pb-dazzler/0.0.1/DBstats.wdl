version 1.0

task DBstats {
  input {
    Boolean uU
    Boolean nN
    Boolean mM
    Boolean bB
    String? dbDbStats
  }
  command <<<
    DBstats \
      ~{dbDbStats} \
      ~{true="-u" false="" uU} \
      ~{true="-n" false="" nN} \
      ~{true="-m" false="" mM} \
      ~{true="-b" false="" bB}
  >>>
}