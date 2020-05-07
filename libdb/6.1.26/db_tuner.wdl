version 1.0

task DbTuner {
  input {
    String cC
    File dD
    String hH
    String sS
    String vV
  }
  command <<<
    db_tuner \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}