version 1.0

task Fasta2esd {
  input {
    Boolean? alphabet
  }
  command <<<
    fasta2esd \
      ~{true="--alphabet" false="" alphabet}
  >>>
  parameter_meta {
    alphabet: "[unknown] "
  }
}