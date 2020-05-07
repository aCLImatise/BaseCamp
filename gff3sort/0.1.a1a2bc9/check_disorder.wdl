version 1.0

task CheckDisorder.pl {
  input {
    Boolean listList
  }
  command <<<
    check-disorder.pl \
      ~{true="--list" false="" listList}
  >>>
}