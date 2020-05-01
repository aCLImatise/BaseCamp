version 1.0

task RemoveTail.py {
  input {
    String oO
    Boolean vV
    Boolean dD
  }
  command <<<
    remove_tail.py \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}