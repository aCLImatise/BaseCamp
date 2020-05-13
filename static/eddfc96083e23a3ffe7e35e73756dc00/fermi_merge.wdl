version 1.0

task FermiMerge {
  input {
    Boolean fF
    File oO
    Int tT
  }
  command <<<
    fermi merge \
      ~{true="-f" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}