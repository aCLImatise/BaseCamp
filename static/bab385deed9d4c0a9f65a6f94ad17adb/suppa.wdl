version 1.0

task Suppa.pyJoinFiles {
  input {
    Array[String]+ iI
    String fF
    String oO
  }
  command <<<
    suppa.py joinFiles \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}