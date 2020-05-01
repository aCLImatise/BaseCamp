version 1.0

task Bwjoin {
  input {
    String fF
    String oO
  }
  command <<<
    bwjoin \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}