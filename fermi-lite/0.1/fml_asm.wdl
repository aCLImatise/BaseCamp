version 1.0

task FmlAsm {
  input {
    Int eE
    Array[Int]+ cC
    Int lL
    Float rR
    Int tT
    Boolean aA
    String? inInFq
  }
  command <<<
    fml-asm \
      ~{inInFq} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-A" false="" aA}
  >>>
}