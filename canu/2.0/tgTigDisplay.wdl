version 1.0

task TgTigDisplay {
  input {
    String sS
    String tT
  }
  command <<<
    tgTigDisplay \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}