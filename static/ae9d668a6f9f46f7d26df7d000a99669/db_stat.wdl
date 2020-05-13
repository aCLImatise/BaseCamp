version 1.0

task DbStat {
  input {
    File dD
    Boolean fnFn
    String hH
    String pP
    String sS
  }
  command <<<
    db_stat \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-fN" false="" fnFn} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}