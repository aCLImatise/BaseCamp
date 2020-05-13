version 1.0

task Mgaps {
  input {
    String dD
    String fF
    String lL
  }
  command <<<
    mgaps \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}