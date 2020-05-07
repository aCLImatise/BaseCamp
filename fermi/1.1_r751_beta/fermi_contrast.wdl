version 1.0

task FermiContrast {
  input {
    Int oO
    Int tT
    Int kK
    String? idx1fmdIdx1fmd
    String? idx1rankIdx1rank
    String? 112sub
    String? idx2fmdIdx2fmd
    String? idx2rankIdx2rank
    String? 221sub
  }
  command <<<
    fermi contrast \
      ~{idx1fmdIdx1fmd} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{idx1rankIdx1rank} \
      ~{112sub} \
      ~{idx2fmdIdx2fmd} \
      ~{idx2rankIdx2rank} \
      ~{221sub}
  >>>
}