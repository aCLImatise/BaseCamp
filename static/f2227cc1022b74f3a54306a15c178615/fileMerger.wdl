version 1.0

task FileMerger.py {
  input {
    Array[String]+ iI
    String fF
    String oO
  }
  command <<<
    fileMerger.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}