version 1.0

task RestrictRepset.py {
  input {
    String iI
    String rR
    String oO
  }
  command <<<
    restrict_repset.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}