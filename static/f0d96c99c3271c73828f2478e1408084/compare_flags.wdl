version 1.0

task CompareFlags.py {
  input {
    String iI
    String oO
    String f1F1
    String f2F2
  }
  command <<<
    compare_flags.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(f1F1) then ("-f1 " +  '"' + f1F1 + '"') else ""} \
      ~{if defined(f2F2) then ("-f2 " +  '"' + f2F2 + '"') else ""}
  >>>
}