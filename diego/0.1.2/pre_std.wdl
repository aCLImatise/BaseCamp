version 1.0

task PreStd.py {
  input {
    String lL
    String dD
    String oO
  }
  command <<<
    pre_std.py \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}