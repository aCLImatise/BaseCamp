version 1.0

task Menecheck {
  input {
    String dD
    String sS
    String tT
  }
  command <<<
    menecheck \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}