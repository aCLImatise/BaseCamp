version 1.0

task Menescope {
  input {
    String dD
    String sS
  }
  command <<<
    menescope \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}