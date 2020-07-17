version 1.0

task _freak {
  input {
    Boolean? letters
  }
  command <<<
    _freak \
      ~{true="-letters" false="" letters}
  >>>
  parameter_meta {
    letters: "string     [gc] Residue letters (Any string)"
  }
}