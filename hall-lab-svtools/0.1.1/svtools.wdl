version 1.0

task Svtools {
  input {
    Boolean contactContact
  }
  command <<<
    svtools \
      ~{true="--contact" false="" contactContact}
  >>>
}