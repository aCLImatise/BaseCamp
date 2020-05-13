version 1.0

task Edalign {
  input {
    File aA
    File bB
  }
  command <<<
    edalign \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}