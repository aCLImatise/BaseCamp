version 1.0

task RandomSplit.pl {
  input {
    String? randomRandomSplit
    String? dbfileDbfile
    Int? sizeSize
  }
  command <<<
    randomSplit.pl \
      ~{randomRandomSplit} \
      ~{dbfileDbfile} \
      ~{sizeSize}
  >>>
}