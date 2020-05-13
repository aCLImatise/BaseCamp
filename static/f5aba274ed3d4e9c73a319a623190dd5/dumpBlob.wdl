version 1.0

task DumpBlob {
  input {
    String bB
  }
  command <<<
    dumpBlob \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}