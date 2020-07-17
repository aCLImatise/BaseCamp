version 1.0

task Freak {
  input {
    Boolean? letters
  }
  command <<<
    freak \
      ~{true="-letters" false="" letters}
  >>>
  parameter_meta {
    letters: "string     [gc] Residue letters (Any string)"
  }
}