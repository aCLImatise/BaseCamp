version 1.0

task Translate {
  input {
    Boolean fF
  }
  command <<<
    translate \
      ~{true="-f" false="" fF}
  >>>
}