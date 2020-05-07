version 1.0

task BlThreshold {
  input {
    String nN
    String sS
  }
  command <<<
    bl-threshold \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}