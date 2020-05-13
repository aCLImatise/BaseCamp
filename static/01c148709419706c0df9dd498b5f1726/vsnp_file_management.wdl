version 1.0

task VsnpFileManagement.py {
  input {
    String gG
    String eE
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_file_management.py \
      ~{progProg} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}