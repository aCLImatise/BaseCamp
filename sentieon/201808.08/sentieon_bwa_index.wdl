version 1.0

task SentieonBwaIndex {
  input {
    String? bwaBwa
    String? indexIndex
    String? inInFasta
  }
  command <<<
    sentieon-bwa index \
      ~{bwaBwa} \
      ~{indexIndex} \
      ~{inInFasta}
  >>>
}