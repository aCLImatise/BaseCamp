version 1.0

task ASCIIGenome {
  input {
    String? inputInput
  }
  command <<<
    ASCIIGenome \
      ~{inputInput}
  >>>
}