version 1.0

task PaladinPrepare {
  input {
    Boolean rR
    String fF
    String pP
  }
  command <<<
    paladin prepare \
      ~{true="-r" false="" rR} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""}
  >>>
}