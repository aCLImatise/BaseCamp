version 1.0

task AssessHomopolymersCount {
  input {
    String oO
    String lL
  }
  command <<<
    assess_homopolymers count \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}