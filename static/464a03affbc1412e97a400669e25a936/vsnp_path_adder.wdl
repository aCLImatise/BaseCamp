version 1.0

task VsnpPathAdder.py {
  input {
    Directory dD
    Boolean sS
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_path_adder.py \
      ~{progProg} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}