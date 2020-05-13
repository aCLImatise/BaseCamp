version 1.0

task Ace2sam {
  input {
    Boolean pP
    Boolean cC
    String? inInAce
  }
  command <<<
    ace2sam \
      ~{inInAce} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC}
  >>>
}