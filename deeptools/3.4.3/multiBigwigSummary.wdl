version 1.0

task MultiBigwigSummary {
  input {
    File bB
    String oO
  }
  command <<<
    multiBigwigSummary \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}