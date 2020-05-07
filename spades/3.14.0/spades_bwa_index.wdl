version 1.0

task SpadesBwaIndex {
  input {
    String? bwaBwa
    String? indexIndex
    String? inInFasta
  }
  command <<<
    spades-bwa index \
      ~{bwaBwa} \
      ~{indexIndex} \
      ~{inInFasta}
  >>>
}