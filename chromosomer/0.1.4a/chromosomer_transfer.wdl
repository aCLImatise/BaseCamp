version 1.0

task ChromosomerTransfer {
  input {
    String fF
  }
  command <<<
    chromosomer transfer \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}