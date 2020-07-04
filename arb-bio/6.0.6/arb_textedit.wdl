version 1.0

task ArbTextedit {
  input {
    File filename
  }
  command <<<
    arb_textedit \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}