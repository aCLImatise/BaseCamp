version 1.0

task SmofSniff {
  input {
    String? inputInput
  }
  command <<<
    smof sniff \
      ~{inputInput}
  >>>
}