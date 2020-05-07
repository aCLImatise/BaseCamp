version 1.0

task Errhdr {
  input {
    String sS
  }
  command <<<
    errhdr \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}