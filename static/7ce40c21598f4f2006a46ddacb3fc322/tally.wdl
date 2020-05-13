version 1.0

task Tally {
  input {
    String? cmpCmp
  }
  command <<<
    tally \
      ~{cmpCmp}
  >>>
}