version 1.0

task Consensus.py {
  input {
    String? alignmentAlignment
  }
  command <<<
    consensus.py \
      ~{alignmentAlignment}
  >>>
}