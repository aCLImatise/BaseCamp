version 1.0

task Specialk {
  input {
    String oO
    String sS
    String? readsReadsFile
  }
  command <<<
    specialk \
      ~{readsReadsFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}