version 1.0

task VsnpBrucMlst.py {
  input {
    String r1R1
    String r2R2
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_bruc_mlst.py \
      ~{progProg} \
      ~{if defined(r1R1) then ("-r1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("-r2 " +  '"' + r2R2 + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}