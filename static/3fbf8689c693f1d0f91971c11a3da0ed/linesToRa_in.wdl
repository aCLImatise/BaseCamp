version 1.0

task LinesToRaIn.txt {
  input {
    String? outraOutra
  }
  command <<<
    linesToRa in.txt \
      ~{outraOutra}
  >>>
}