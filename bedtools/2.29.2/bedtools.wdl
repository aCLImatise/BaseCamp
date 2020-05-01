version 1.0

task Bedtools {
  input {
    Boolean contactContact
  }
  command <<<
    bedtools \
      ~{true="--contact" false="" contactContact}
  >>>
}