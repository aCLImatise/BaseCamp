version 1.0

task Fasta2esd {
  input {
    Boolean alphabetAlphabet
  }
  command <<<
    fasta2esd \
      ~{true="--alphabet" false="" alphabetAlphabet}
  >>>
}