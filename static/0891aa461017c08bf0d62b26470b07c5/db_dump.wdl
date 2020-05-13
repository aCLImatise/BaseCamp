version 1.0

task DbDump {
  input {
    Boolean kKNpv
    String dD
    String dD
    String fF
    String hH
    String mM
  }
  command <<<
    db_dump \
      ~{true="-kNpV" false="" kKNpv} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}