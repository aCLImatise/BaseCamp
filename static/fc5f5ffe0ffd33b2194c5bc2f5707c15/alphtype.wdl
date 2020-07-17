version 1.0

task Alphtype {
  input {
    String alphabet
  }
  command <<<
    alphtype \
      ~{alphabet}
  >>>
  parameter_meta {
    alphabet: ""
  }
}