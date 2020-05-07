version 1.0

task Ma {
  input {
    String cC
  }
  command <<<
    ma \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""}
  >>>
}